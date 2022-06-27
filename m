Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C264455D896
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:20:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240949AbiF0UEH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240956AbiF0UDu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:50 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C2841CB14
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:49 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id s20-20020a056830439400b0060c3e43b548so8152884otv.7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UWqi/2Fd9mBt21y7lsS0FXVlAccLBJZChsj63IUqSu4=;
        b=zGrJ4hreZ4iGQhp9qU9Zb374QznewAE4U/GCqirFYeKT/pWmkSgHvHqEZg+HG8ZIIV
         2sQ4SwWVdsqya/Lnt59fxCRUcQaUH14bHa48fL7LuZwzJltU15VwJmXZpTrcZWEnVh+k
         C7f3Xd7W2+eUg8M9fjN27oYAIpDwG/ME73WNiPyL153T5hX6tO9qezSw8XrPDBrBtfzE
         ORjdNQICSo5RXTWU7BdvS8VH2xMM1mXdKi8agmQ/r3w3Rq+aXya6pB/jvG26vcitKiFE
         QwejX2StAX04wo8BBa32ByiFKvXU57FOcwPLZJ02yHllgdVei21J5HfHH/p/TgYg5YPg
         0SLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UWqi/2Fd9mBt21y7lsS0FXVlAccLBJZChsj63IUqSu4=;
        b=tjQYXIGBh6f88W3nYKaz+tj+DsYeFzsWCtODlbopmnKbHS0nTVgiR572CXukfvvleS
         rMUoR3orP+LgIDOGXLfCCTJ6wgvDsM/WiHAgjqdJVJOcoV0IyZfeA+0TZ0q6ePHAGt6N
         LYHLgcDTi+0MYzFl/7WDDTqYNKDIGP4PhiO6YQ6Xd1aeIgT8i16xbriZGOQI3OOMyTeP
         1vGBNg/t0uIQAi096YcKpcvbZzXwR/naDbcnn+feuA+uGVGNYO/iIRQkJ5wYLDr5In3r
         /zgU998Ikp+LUkPhyGFIyeLv+BtxclVUgf300ZX2EeYUVpzwjEdwuKFuGi5irJlFQMYq
         1D8Q==
X-Gm-Message-State: AJIora/0QVy2p6xA7UMR/4s7IHXtf44uWJUyt0KkV8u0mWmjN6vlhBbr
        swCjWwZnDFZuaUAmvdbdkgTgnQ==
X-Google-Smtp-Source: AGRyM1sEmKjlDu5igrD1beTjFuleq5EpcMiMGrtfjytreE56MmhbZyTo3VY3nT5Wq7Cpi7pSnEn23Q==
X-Received: by 2002:a05:6830:2706:b0:60c:7f84:8ab9 with SMTP id j6-20020a056830270600b0060c7f848ab9mr6611117otu.243.1656360229190;
        Mon, 27 Jun 2022 13:03:49 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:48 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     quic_rohkumar@quicinc.com, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, srinivas.kandagatla@linaro.org,
        robh+dt@kernel.org, swboyd@chromium.org, quic_rjendra@quicinc.com,
        devicetree@vger.kernel.org,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        judyhsiao@chromium.org, agross@kernel.org, dianders@chromium.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: (subset) [PATCH v2] arm64: dts: qcom: sc7280-qcard: Add ldo_l17b regulator node
Date:   Mon, 27 Jun 2022 15:03:03 -0500
Message-Id: <165636016348.3080661.8833987764086571024.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
References: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Apr 2022 15:32:14 +0530, Srinivasa Rao Mandadapu wrote:
> Add pm7325 ldo_l17b regulator, which is required for
> wcd codec vdd buck supply on sc7280-qcard board.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280-qcard: Add ldo_l17b regulator node
      commit: a57de71f0980aeaef4c1c1e88bb2d396b9ccb650

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
