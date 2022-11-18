Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08EB162F048
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241648AbiKRI7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:59:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241655AbiKRI7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:59:07 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D696EB63
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:59:06 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id d20so5931700ljc.12
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikLNajhgagvsy8YWu//dBofdaBK+urha+25nG1v92v4=;
        b=uWO9GE/K9yuumFxgicFZpL7JSyWo8W7Ej0i238IwYtZFHEETQwJtZgtxybnIXhrEdr
         xWLUoiOeBFDd8kez2EO1LGOA2UYyu11SKNJqfHxoVeGn+yV8rkzYgMNmhzXmRZx8I1O1
         /LcpYxYskjNhjigedeL2NM99uOJacrfT8tzzu7KKPyko0MX5Qt99Mt0ZK+H7eyqFWDGZ
         5oZddPqFOyQqP29zlB0TliQYkntCLlJqQ1zQPec6qPjmmtYI4LH9I1wPAYKbLhibTap9
         VNKMFxCEqT98iaPlQYUPyCFNM9ZV2WmZHi9RJy1Mo07ycwJysmIV3wJk2RJtP7+36n87
         NaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikLNajhgagvsy8YWu//dBofdaBK+urha+25nG1v92v4=;
        b=rd7tlAOWC0L/HH6oHnmchiAQudQ8Xh/OEuwEpQOrtTe0LuKeHOcUgJ9ecppnYLGtpA
         DDrO85h+/Kqv4iu3VeRU9jbxmYqzm4es6O+DBVLzbj2wx3Q2SC23aSCTNcQ8kSiep5p2
         qB4uBN4Ig6vzbi/EPsFY7FboymTCVjz0Zc91YeX4l9yzLXShCaOpZMJL2xBm21qRmCyN
         rRT7JB1M69Z/TbuTVqbjLoYDsdlNJe/p/LMVkAbFao+gm+XBQde530Hf3bitVvcjUEUG
         ip4fsKrs4WYuWqGBV+rYRgqKwhrj/CnX/SwWVOyc2sMLj5nUDpRP8EhZbvJlI3liYrsy
         27kw==
X-Gm-Message-State: ANoB5pnxjfsONZHhVfVYV3IzKvMhuAHGsUEACCOckHHeeat+uVrwvED0
        I2jn6P63G9ornmOPya9kMf68jzu19v/9UUlO
X-Google-Smtp-Source: AA0mqf7cReHOzSDcSHf5S0iQhLRoD854GcTOICPse30M4ulzJJRejVX2zyyWwfYTVCg999LvptS2DQ==
X-Received: by 2002:a05:651c:124c:b0:277:8144:413f with SMTP id h12-20020a05651c124c00b002778144413fmr2359934ljh.390.1668761945118;
        Fri, 18 Nov 2022 00:59:05 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b0049478cc4eb9sm575398lfo.230.2022.11.18.00.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 00:59:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx: trim addresses to 8 digits
Date:   Fri, 18 Nov 2022 09:59:00 +0100
Message-Id: <166876193952.14422.5417474911500432659.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221115105051.95345-1-krzysztof.kozlowski@linaro.org>
References: <20221115105051.95345-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Nov 2022 11:50:51 +0100, Krzysztof Kozlowski wrote:
> Hex numbers in addresses and sizes should be rather eight digits, not
> nine.  Drop leading zeros.  No functional change (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: imx: trim addresses to 8 digits
      https://git.kernel.org/krzk/linux-dt/c/a4231f626e780e3186fe4561b8cadf57673e3cd0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
