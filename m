Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED084564421
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232070AbiGCEAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 00:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232762AbiGCD7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:33 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC351B7E2
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:55 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id y77so8958124oia.3
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SoshOZAU9AyMKNYJfEDWJd85EB+kRCztVWsUCUESRrE=;
        b=faytafRNQPbttbLs0Ew2K4ZlAnoXFcf3zobIrP1e3tcU4BPeKfXBBUyBwYVqhLMgRo
         BwE15n3Kw3cLJZ9WgIAwVbODcEa+WRyTvBQxYkS6e8g52E4eu9UPd61vnjKyLouJsoIO
         ufqyOBp+iWRhAGnlkZqsxxsG9A6iPX4I/j9rTPrxKBh5sOzNaEv8i6RVs6DHI3XanReZ
         3D2vZhnm4QzSR08DnhIpHwayxVIEnZC4VcMwStq3VrN1tak4aLzJ7YNG2TlFSSjs0W6y
         iyfK2+nCq4BL+ljSJsiWe2WZqb2UCeY+fNpX+SwUMdhR0QRTAX+f9zoNA+IGlp++G8gA
         XPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SoshOZAU9AyMKNYJfEDWJd85EB+kRCztVWsUCUESRrE=;
        b=Uf11rgjgITM2rlIAFiExOMF4jc+H3GbyXkAA5+bEJDRurzdaS4l8CCXFJo8SrlMDri
         yhaBiWuKPWOLH9S2vhM+Qrnq1UFIWxLLvqTNk9U+Yhh/OS6ast5yJmE5SiAlwXcKcVfj
         4+Ug107KWdPiJ5hiFYy7syvmt1ozu/MReQ7uIltBWM8/+NYMHyM+rKQ/UovMpn1fo5bE
         BIaO6mOuKQi4r/1HtgnOW+7B7KQJeH/D2kreSeJ7og8pxzsDH8I8UCrEnsp0rBJP8Vxs
         Yl2HzAO9ejdvDBfLt52ZMCSm6BGoYmE+aVUJhRFUbvatSmu28CgJ5sbB3j9AUoo8WvMo
         k3MA==
X-Gm-Message-State: AJIora8zEBQwtsALVnV4WFCBy4g1Q+LaaHMViqAapBPPefaRDMTEFc6l
        YBO/KmdO4IOqJcgzPkGd1RqAAQ==
X-Google-Smtp-Source: AGRyM1sUy2cHyln6mDMYZdugakqC1E0EeW38uL9XfeS1Vq21tw9kJ4XoDTOMEPIArdogO+P4BTbGpA==
X-Received: by 2002:a05:6808:13c1:b0:335:c146:5e06 with SMTP id d1-20020a05680813c100b00335c1465e06mr9972633oiw.1.1656820675215;
        Sat, 02 Jul 2022 20:57:55 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:54 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     dmitry.baryshkov@linaro.org, sboyd@kernel.org,
        linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, tdas@codeaurora.org,
        absahu@codeaurora.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        robh+dt@kernel.org, Robert Marko <robimarko@gmail.com>,
        mturquette@baylibre.com
Subject: Re: (subset) [PATCH v4 01/11] clk: qcom: ipq8074: fix NSS core PLL-s
Date:   Sat,  2 Jul 2022 22:56:48 -0500
Message-Id: <165682055969.445910.10215252417210035310.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220515210048.483898-1-robimarko@gmail.com>
References: <20220515210048.483898-1-robimarko@gmail.com>
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

On Sun, 15 May 2022 23:00:38 +0200, Robert Marko wrote:
> Like in IPQ6018 the NSS related Alpha PLL-s require initial configuration
> to work.
> 
> So, obtain the regmap that is required for the Alpha PLL configuration
> and thus utilize the qcom_cc_really_probe() as we already have the regmap.
> Then utilize the Alpha PLL configs from the downstream QCA 5.4 based
> kernel to configure them.
> 
> [...]

Applied, thanks!

[01/11] clk: qcom: ipq8074: fix NSS core PLL-s
        commit: ca41ec1b30434636c56c5600b24a8d964d359d9c
[02/11] clk: qcom: ipq8074: SW workaround for UBI32 PLL lock
        commit: 3401ea2856ef84f39b75f0dc5ebcaeda81cb90ec
[03/11] clk: qcom: ipq8074: fix NSS port frequency tables
        commit: 0e9e61a2815b5cd34f1b495b2d72e8127ce9b794
[04/11] dt-bindings: clock: qcom: ipq8074: add PPE crypto clock
        commit: 90e6d290603df6387c95c114cc8154862c3e7515
[05/11] clk: qcom: ipq8074: add PPE crypto clock
        commit: 74521205b64030b1321ccc04372729cfd2800996
[06/11] clk: qcom: ipq8074: set BRANCH_HALT_DELAY flag for UBI clocks
        commit: 2bd357e698207e2e65db03007e4be65bf9d6a7b3
[07/11] dt-bindings: clocks: qcom,gcc-ipq8074: support power domains
        commit: 2c930dc1e34f08d32ccf1b2baf01dec56b41ab05
[08/11] dt-bindings: clock: qcom: ipq8074: add USB GDSCs
        commit: 74622e401e2109a9aacce0b9698bbcd2307db17a
[09/11] clk: qcom: ipq8074: add USB GDSCs
        commit: 8add990ace3db767c2dab59113fbdf137d237529
[10/11] clk: qcom: ipq8074: dont disable gcc_sleep_clk_src
        commit: 1bf7305e79aab095196131bdc87a97796e0e3fac

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
