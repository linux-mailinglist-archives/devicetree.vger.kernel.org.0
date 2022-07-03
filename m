Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BC8B5643D2
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 05:57:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231352AbiGCD5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:57:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbiGCD5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:11 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34FA1B483
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:09 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id r82so8970524oig.2
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EeburHmokugercSZq/LrlgugPYPeB1QQRSzrOCKHYG8=;
        b=PmxxOf4hzgj/RnMrn28KmXnIW1qmxXcqyXjKrlAKWLyUJbZyJ6BAzjUpybjlYmV3bo
         2BvfSwghuKpQje2UGfhcgOmNL63RY5/22uuCw7Ts2h/J5uJOETVkdqnu2iNusE0z06A9
         1wUvTuehkfjzQDW8GP5zWMHhDAYL5yjr6GxUjLmuYPOcSmRubmVC/b5AWUCIsJedfQI4
         BOFU5Mgefgn6eTIaP8Z+qK9X8M4kVpxCl/2vwG9nfvODKvw/IiF97YaTC+7hIOE1HjDL
         rMxg7cNkLIrfpLv0y2vYp+0RxS7NCwgvnu7kA4VNshNwe2wGv7rYxTdJ7GOUOC6By7Zu
         dXBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EeburHmokugercSZq/LrlgugPYPeB1QQRSzrOCKHYG8=;
        b=O1Xc4lEYpLnSHErRU7zSvl4iZ/TvIKUqtoPfNJSIuXB7dCeF2SLophJnD+kisygMmQ
         4qDfpJter3jYqbsAhXsvPsNr6vJoEK/eZrNATAoWEceeel8DrxliE/C54GIvbmo/kah9
         qFJpWSzHgx6fhfL6umBc2kCY1u34gO0i6w65wBJZMkq9qKT1MoO+fkt5yh5Ht4ABOcL8
         NZNyuGVDMDrOwS6CEYa8QsZmdJpgFKqMe9K3M0UGl3NjEILDz/HACEmQRaZ8+vCCjACC
         a9+DVR7n2FSzbvNcDSaGDD951hGDLI04D8ZoAQS9QktwHWHPahAb/1KzTGM11RrUCZOU
         vp9A==
X-Gm-Message-State: AJIora9XzFDPL8VS6SWukV7Q7W1JKuuTp9xzw5G7QL97SZh7+WPHRh+z
        5AAqT44Ca/feCgEQQK+ryliE/w==
X-Google-Smtp-Source: AGRyM1vgAorwgViuyAft9+rJvywIIw2QPc7Y6NFzHeI/JSPj3GBszgGXwhhn4b3ipr+wKOjb3PaEQg==
X-Received: by 2002:a05:6808:14cd:b0:337:5:309f with SMTP id f13-20020a05680814cd00b003370005309fmr7919033oiw.121.1656820628361;
        Sat, 02 Jul 2022 20:57:08 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:07 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8916: add xo clocks to rpmcc and a53pll
Date:   Sat,  2 Jul 2022 22:56:04 -0500
Message-Id: <165682055972.445910.855426932100419831.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220620010519.1533364-1-dmitry.baryshkov@linaro.org>
References: <20220620010519.1533364-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Jun 2022 04:05:19 +0300, Dmitry Baryshkov wrote:
> Both a53pll and rpmcc make use of xo as a clock parent. Add it to the
> respective device nodes.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8916: add xo clocks to rpmcc and a53pll
      commit: 93d7cf2ee59fe6f4484d2833e18d8d4a12b9767e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
