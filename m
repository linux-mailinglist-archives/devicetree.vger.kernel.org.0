Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5151D569833
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 04:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234908AbiGGCby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 22:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233780AbiGGCbr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 22:31:47 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898242F3A5
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 19:31:46 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-10bffc214ffso12961236fac.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 19:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S+CDqhKLFSdtFr+4g/PZBOEODsX3smaY09cPDWxItrA=;
        b=vo/r//BX0sk3/UBS3biicwB6Wg7z1c0sTfukn+Tvej/oe3UyWH1dwEwvKc+Qd4GqbJ
         PhGKj/4xw+emWIYPX98awkGZPQSm0ZD0s0VHgK87Kaed/qNbDedl4WHnJz4FG2WdJCdi
         GrInId4Am1+eU+o65gYVCzQqk/04Sde2vp9xlM/NgIW+CM8Ud0j2SQSKTzGOxrwR2d8C
         pRNRvs6OLEKTTIMc5xDTIXhO65Pf2oNqVMS72alCNRhCZfAgYlER4axKfQD6A51zFm8Q
         fUOcgcaHzjiK2Q+fKmOXXdViPS4ah3CxPSo1ynqhkAivB87RH8mmfNZ5ZvPeNGw4N2By
         q9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S+CDqhKLFSdtFr+4g/PZBOEODsX3smaY09cPDWxItrA=;
        b=7bG0eMDEpAF6qM66kJdC90iDwftuErNhL8zFvVHYWBPs+O6dO4EB3dOjLpFxMWjVbU
         W3BlTwrOJ9WyC0UxjEVfhzRyk84fSyzFcBGMzTSW/5HFWNYqOZYpbDGeQoUvwbzunEES
         pjkpfxbxf5+P6tXsTQpC3W+bq9C+MIkWurb4oXmahpn3igopYYXEcSdHr10oLkGY6eml
         eCLA3uKAZOWq7kGuPDOAADQoEYApAzi2K4hpqzqy5pPiTzcdrxMQ84UO27NMpIXkjSBl
         JFrdnLpx/+F8zLJ8iFre3z8NMNoMgYKRM9DRNfxdlGH3Di42+LsMJwRdAULZHMUAkogN
         eumQ==
X-Gm-Message-State: AJIora8O7oLBrUFCLGqZ8X2g6X5+GQ7FNuLmoRyKAHSHpSWBF0bttHgU
        4F+EiOwjhdCWvlGzi70EbZRn1w==
X-Google-Smtp-Source: AGRyM1srEzppwLSuc5r8vVwc7RKHk5pNVB4/DqYy5ouSZJhxbsqWGuU/TB7adm7VYdcT8RTlwxsfMA==
X-Received: by 2002:a05:6870:f693:b0:101:cb61:2937 with SMTP id el19-20020a056870f69300b00101cb612937mr1217008oab.151.1657161106276;
        Wed, 06 Jul 2022 19:31:46 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x48-20020a056830247000b006168c71ca4asm17024469otr.56.2022.07.06.19.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 19:31:45 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     linux-arm-msm@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH RESEND v5 5/5] arm64: dts: qcom: msm8996: Add interconnect support
Date:   Wed,  6 Jul 2022 21:31:23 -0500
Message-Id: <165716107313.864223.6512259211195719979.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211021132329.234942-6-y.oudjana@protonmail.com>
References: <20211021132329.234942-1-y.oudjana@protonmail.com> <20211021132329.234942-6-y.oudjana@protonmail.com>
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

On Thu, 21 Oct 2021 13:25:23 +0000, Yassine Oudjana wrote:
> Add interconnect providers for the multiple NoCs available on the platform,
> and assign interconnects used by some blocks.
> 
> 

Applied, thanks!

[5/5] arm64: dts: qcom: msm8996: Add interconnect support
      commit: f35aaef152d16caa9e27656c51e95b20f7af5514

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
