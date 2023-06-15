Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD5F7311F6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjFOIUU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:20:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243152AbjFOITq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:19:46 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00F742710
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:19:44 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-bcad7f7dabcso1461773276.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686817184; x=1689409184;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kPYb8xZ11ehlA8iHgxMBfKPx2ZdrMHP8TOi5kQI8lnU=;
        b=ve02OQgvrgACzdGnixmSDsHQ/NVgFVgm+6gUgTFb4oKsHmoTL5G1a+wpvd3PrWTAuX
         KfmwEz2o59mBkWAmxIaZXJur6yCRQbuHNFSdFaHlpbnBaw68ZRnQQOkt9zeMKyxOWOzb
         EGBATHN0yhT05iFZPnIPOYxcAC21rLdedpsukcAeoK5CQ0Rv4nwmXrONe+M/Gx5ybODq
         p1cksF7WAp0vL1aCwovPUEZ55JKlSN9XV8dJRffmlqWsth481T60lorRW5eO1DnT9ZQC
         ruYia8NVX3GD0+hy24prv+NzjL6pJdB48yoH8GdTjZbjzf9VX+ts5mNtjI0D5KVs6M4B
         yQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686817184; x=1689409184;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kPYb8xZ11ehlA8iHgxMBfKPx2ZdrMHP8TOi5kQI8lnU=;
        b=Stwlv4LxCTJITFyqdF6m48b0rfJ8lcuB9ViNa3D0T/vU2+Fa8CQp9xM9ITBlwKtzaX
         UvhwMx6fwbQv89thi0Yvnd6+GqE3e/xu9nLPpTLJk/xmCrWdE829WqJQh2DncpA7W39d
         PCNZa5fDOFzS30lSuYeRRLHtUT1MC7GhE4G9irIF40EOYOxbgFwu1olgba8J0gQUQUKq
         UyDhm3v7A6c1tjjY9QgkJXUWUst1FRSJplwE+UwyWYrB77pkC98WROxaQqdqdUNfcrx/
         QvsX0ZUsVxD3sNQK8uXLXzhmYMP6rYI/cSyAn6YKUToBvswbZGzw6XRKwtrjKROCdoe9
         Yyew==
X-Gm-Message-State: AC+VfDyx7dxxCZtesDM0aDYcCPKwGeO0m/Wm+1i1b69ZHU8496VEMFbb
        mftM5CZP9zbyuBsUMnd6yYHTu9KvJh5IXgaBmEwrCw==
X-Google-Smtp-Source: ACHHUZ6nx0i1AynMMBvmCyAARW8jRU1qGF7FkJs/G0+hdRK8KJRnbpWL7kWhQ6x5JnKoCtgDMbZjSTXXbn1nogRypaE=
X-Received: by 2002:a25:6b47:0:b0:ba8:2009:ccbb with SMTP id
 o7-20020a256b47000000b00ba82009ccbbmr3956394ybm.46.1686817184042; Thu, 15 Jun
 2023 01:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230615-topic-8996hdmi-v1-1-39584bfd68d2@linaro.org>
In-Reply-To: <20230615-topic-8996hdmi-v1-1-39584bfd68d2@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 15 Jun 2023 11:19:33 +0300
Message-ID: <CAA8EJpqKNPRngiYHbXxR4MBv-V53-nmyS2t652sV_cXN49DGaQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: Fix HDMI node
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Jun 2023 at 11:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> A recent commit messed up the node name and compatibles. Fix it.
>
> Fixes: f43b6dc7d56e ("arm64: dts: qcom: msm8996: rename labels for HDMI nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I should use regexps more carefully.


-- 
With best wishes
Dmitry
