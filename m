Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92C2455D8A3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240819AbiF0UDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240886AbiF0UDj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:39 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 820C61ADB4
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:34 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-101e1a33fe3so14277462fac.11
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p7Ai3NPKsAFtnnORZgFC6N34Jry/aAP5VHbChHc1EVI=;
        b=nsx36hBQWYTHdhEk+HQx9oOQ3DeXRZtAELHmp4SLmDV+ZVGGX42NwUMNK2VZY1PUEp
         hezqszTiEtaUbIy6PQPRxNbTG3ows9lHAGydY8fA2QP6wgqVpx8s8RGaN3zY+r00X4sL
         Mofczf08Psir8XavaORWKzjl0wxZVp8d36tDXSPPEhstBGhWMjYmLVYt8dP085d5LSrR
         o1gxeAsbF0e5fyhTBRJrij5p4H/fVdkQCM8dzBIEerVW5QtXuHhJaBfoKjP887B5u+cx
         PXdCFEOFQ19jNDTJDm6THkXv05HejH8Q4lJaKoHPtALVzsWVs+jVFfJL2MAfiiN1bIaM
         aCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p7Ai3NPKsAFtnnORZgFC6N34Jry/aAP5VHbChHc1EVI=;
        b=A3yYs2FqqZJNHtDLjWfzDjQvEHvJDsQMb+oa6QHyb3f/GC4JcxN5Y9SCHhora+c7Fa
         78XHqJM8vczr5ToZxeX1f++icLR9GNoxyN6C/tYKUdI+51ifAZqsxZWcHvUFzyE5o9wv
         FTXVJKjgqTdLOBs+tnNgZpPyjMW/6mwoLdedZHqQvCxVWOfRoHC+/kIuDGWy8y8wN2Wh
         2jg1D3ljCLicg/mQoquIiQr/3zWs2sE2SlEhKwoZelXarDSd8ZiOJicpRbis35EgRB02
         033EabfcYM/F2NRNPLM6KxCGP600wxDKV+wvr9gehEvStQyhibUrRvlXOoFlk+cItqJH
         Phig==
X-Gm-Message-State: AJIora9VvW/3+ST++kO30YeiJvQDJiwttC9VS0J8+e7P3YisyCDhGIve
        iFZddVjFT6E40Mfi5rytxXYw+A==
X-Google-Smtp-Source: AGRyM1uvl2CO6TkhxnIljV0WcEgeEH1/KwJu4WpJy9ehymSKFIAD9m8Jjn5FrVPmhpfSIbXjHGDogw==
X-Received: by 2002:a05:6870:a40f:b0:f2:8a90:ffce with SMTP id m15-20020a056870a40f00b000f28a90ffcemr8495044oal.18.1656360214200;
        Mon, 27 Jun 2022 13:03:34 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:33 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     linux-kernel@vger.kernel.org,
        Konrad Dybcio <konradybcio@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, marijn.suijten@somainline.org,
        Rob Herring <robh+dt@kernel.org>, jamipkettunen@somainline.org,
        martin.botka@somainline.org, devicetree@vger.kernel.org,
        angelogioacchino.delregno@somainline.org,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8994: Fix CPU6/7 reg values
Date:   Mon, 27 Jun 2022 15:02:52 -0500
Message-Id: <165636016348.3080661.16004784378054217218.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220501184016.64138-1-konrad.dybcio@somainline.org>
References: <20220501184016.64138-1-konrad.dybcio@somainline.org>
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

On Sun, 1 May 2022 20:40:16 +0200, Konrad Dybcio wrote:
> CPU6 and CPU7 were mistakengly pointing to CPU5 reg. Fix it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8994: Fix CPU6/7 reg values
      commit: 47bf59c4755930f616dd90c8c6a85f40a6d347ea

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
