Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0D9455EF74
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbiF1UV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:21:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbiF1UVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:34 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41C9BB81
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:26 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id f10-20020a4aa68a000000b0042579cb6238so2699661oom.7
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eExg43XsltTCVbwLDSdcT/fQY2g0pil+aiJvJCGyZ1E=;
        b=K5fWHXxAgdq/qiDFOKF4is2WgdvkKkBkyAcD59vbiHaU4oUQ/a/HCra7mjrjQkyHr8
         FoPYBliprIhqyQ1+Wz0DgN2aqYv84dc5D6Uars2mJePWLh03Cmjju5q2B65R/3Av2Nj6
         TF+bmiVcHp+40EfoRU+smZAi8QvUON0vcejhjiNjd33ot3zoHioOv4aVtqk//EWtkMvg
         6pv2YdGRDxmDO/9RbTBpKLAeGNHcU+EVouMIBdI9eXioaF5qxprGWp4VFUUoTsAxItJ6
         yqGghlMIumkl2HKTRVp+Bihi9QmZJx92cCkn3iPtbSB4ibg5oblp0M4jPIZGlORECXLe
         b3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eExg43XsltTCVbwLDSdcT/fQY2g0pil+aiJvJCGyZ1E=;
        b=7CVmNZ/Sz/zQZ4RGsdXCK9+eQD72qPf2LxGcQ7h+LFILG8DbLhEF2M1RvRuTpTrQ44
         jgWUNctax/gJPtfQ7ehrkR7ppZulgdumgiOIYPwV3+9nJJICTDv8ZPemh/K3xF3NB7++
         sN3Zvf7GYpyh7hyaoN2cVAR8eO9YanrLPtGxTilZ18yrYlCI7cgNjlnREC5fmDBUNopr
         oI/NpurY/dbFdqwbTYrSPnSr3WdkAguiXSu8pWCUO8XdDj83mKFGHKNZgQDC+Isjvk2v
         6i2P5aYrwH78sJFoX07TpyJL4O9awJeNFnYrx0kMvYvUstlT3uIJRXB959V55At0PR4G
         oWOQ==
X-Gm-Message-State: AJIora+O1GEY9Tulu65q5PQ93jzYJ+1f0Sj7ylK7apeYxgGqqNn2Nzpb
        tgEWirFaHUfMes4ZQUXmV/ytGA==
X-Google-Smtp-Source: AGRyM1sWU5jlEM2LNF47tc4zFn3YAD8ACpBl+Vdp0Ix8tQ7otecNLPwHXjVM/mrSwDqNC3+3jZ4Sjg==
X-Received: by 2002:a4a:864b:0:b0:425:71ed:ada7 with SMTP id w11-20020a4a864b000000b0042571edada7mr8880259ooh.92.1656447566000;
        Tue, 28 Jun 2022 13:19:26 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     martin.botka@somainline.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, marijn.suijten@somainline.org,
        linux-arm-msm@vger.kernel.org, jamipkettunen@somainline.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        angelogioacchino.delregno@somainline.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8996-tone: Rule out PM(I)8994 variants
Date:   Tue, 28 Jun 2022 15:18:58 -0500
Message-Id: <165644753307.10525.11981290491933074203.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430162525.607946-1-konrad.dybcio@somainline.org>
References: <20220430162525.607946-1-konrad.dybcio@somainline.org>
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

On Sat, 30 Apr 2022 18:25:24 +0200, Konrad Dybcio wrote:
> It looks like all Tone devices out in the wild are using PMI8996, which
> suggests the PMI8994-variant DTs are not needed. Remove them.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8996-tone: Rule out PM(I)8994 variants
      commit: a743dff7acc4a4c613e6853a8748430946f941a4

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
