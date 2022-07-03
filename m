Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25E68564441
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbiGCEAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 00:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232732AbiGCD7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:30 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22C9DEAB
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:53 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-10bd7fbc0ddso2842274fac.1
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XGk9o4CaXeM4Zv7BheJ8u3eN+WYQ2lqAWMR1Z/PKwAA=;
        b=gXLHw9uMhRGcQ7aXH3TBh+cGXibwTVy1Qlj1rJqwXGyGiV01NN8To5NBDEKsaFoNX/
         Tl9DrqWujBNcq96A70uq7QIwP8ts/47IMcdKG139VImOcQCqZutjsXLdF2Kz0AMIwxd8
         tFNTjL+afR8eypFCWs8ASX0WBxCp/DN/7tyBKzYboWJyzpBoLXID32YQn2QxIovuAzEw
         YjHHSmoc9i5yRRkOs5uxgaQjD3a6tPR0ekbcfQ0gxc7N/3hAubOCut15BVYmkuqBu8YR
         GlpvTZGEFkIzddxuEER8ZU0NVI1Bvvri0RYISyYsBsoCKN7hzld3bVqZCETt34cE6wj+
         cxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XGk9o4CaXeM4Zv7BheJ8u3eN+WYQ2lqAWMR1Z/PKwAA=;
        b=gUcAPDH/hA791db7vfd1yu/v3Iw8k+/nbDlYo+fE3DwtGU2eTIep54nIoHjPBt95Hp
         cVE7d2NRtY7AhmKEJrwG82MWc0OvbTc5t/E6k+rQw/XmH/UMGFoPYnruYrYyrQcRwChZ
         uXS9SMT1YUtPwhyQYGZWjIznmet5O+H14f4MbMVSOkwppYzCHS80yRQYCnaFFHcO36ZN
         7ud8axIP1H0a+AQ205D/L20eiMFVOwDfodqhQd3Hu3iOwfpBQTWFqi9SlShS1/HT9vLu
         YBErcoyapkMfoKZDJ/UYfGo5pFnyEvPWmn8wJJnk3wHVGIK0rWIUULwry20x3v3eizg+
         08Dg==
X-Gm-Message-State: AJIora8MVcD6w74v5HpX54+Kk6kUZQW8v+lM1Vgi2NiwlayodZqmEPh1
        tFjQYUR2/3RfK8LtY81TYf/brA==
X-Google-Smtp-Source: AGRyM1u0JDtrb0WAItJ1s9OvdyIBoer8rLutGxJphR3t1C/NNku3OlMmvU4zwIX/N/V4AckOhu7bDQ==
X-Received: by 2002:a05:6870:bf15:b0:108:ba9e:1b79 with SMTP id qh21-20020a056870bf1500b00108ba9e1b79mr14879564oab.233.1656820673224;
        Sat, 02 Jul 2022 20:57:53 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:52 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        agross@kernel.org, robh+dt@kernel.org,
        Robert Marko <robimarko@gmail.com>
Subject: Re: (subset) [PATCH] arm64: dts: ipq8074: fix NAND node name
Date:   Sat,  2 Jul 2022 22:56:46 -0500
Message-Id: <165682055972.445910.7185503165217301075.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220621120642.518575-1-robimarko@gmail.com>
References: <20220621120642.518575-1-robimarko@gmail.com>
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

On Tue, 21 Jun 2022 14:06:42 +0200, Robert Marko wrote:
> Per schema it should be nand-controller@79b0000 instead of nand@79b0000.
> Fix it to match nand-controller.yaml requirements.
> 
> 

Applied, thanks!

[1/1] arm64: dts: ipq8074: fix NAND node name
      commit: b39961659ffc3c3a9e3d0d43b0476547b5f35d49

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
