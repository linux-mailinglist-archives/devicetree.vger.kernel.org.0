Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A01E250A23D
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389015AbiDUOaL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389225AbiDUOaE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:04 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 454F83DA72
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:14 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id i21-20020a4ad395000000b0033a4c45246dso873076oos.12
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qfplEFqel18YWhzaQ99003BJu9htbTKjIoDfg6GItSU=;
        b=TzRChBfHXToDF1YopklQzLLKfLQkX9y4QWa7b/LPTqzIrQ3SoT9KAsDEofGqDpA0cQ
         7d8/uMn3qu+oh05Zx+H0VyliVXWqgiZR8CktNk3DC2xXGTufgcnZpl9aY0GRwCR78bCg
         FmP2uIs1p4pRNVp9+BMqx4lqzCkuKNoKOxMw9k4/YN8RQQ7ZH/ED4aY2+vzM86j2qTj9
         OysDt2E92eQjSxeEJ/NqHRTpvUX41FPEbyrB82xJLjJp/VlIiaPwETyuVluNS/3MayS4
         a35KTnDgm3YLoJ0G03mXPgvIpypirHleECT22/PNzPUcplXzCH3TifSwQdbru3aLWM1Z
         uB+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qfplEFqel18YWhzaQ99003BJu9htbTKjIoDfg6GItSU=;
        b=JN0anOkXvKqCt7RxYmSJGUOtEXBiCphV/u+2Cyey1VmmkjqJmY+Yn9vmP08wm9C9kO
         1r/j6zu3VxLRtXXnw+R/usu5zTUP2Fgjb4FemfxXJ5871jX7VbKtT2VYpHvHozFez9YS
         NRpQjBJRt/JN3uTsocikFmXM/6pUVUXMDAWh6drQ2Hn0Nm6JrB1cN/78ug8MMZ1ZKsoC
         /KMdxvUnuepLcrU1yoYQzne/5QD1Kfqtq//SBQt2pL0HQNcAe5Z7ItYc3si6g4vJqBL4
         VBjFmvN7HqE+WiPgv1GSaOAgclzCJpNtVRFXRhxq34scHESxLuTYhwmX5G8v+cXO6CBo
         oetw==
X-Gm-Message-State: AOAM532GId57/XVkvJ3rz2aN6FLq42/hucmfd19dYRcZR3H5902waEce
        M12VGpkQ0tA18Tav4hKDokemUg==
X-Google-Smtp-Source: ABdhPJyS9XP4YCoqUaBjhLeuRUQ9UT8/u0P/JagyRIv7kOHQ0VczNWGDL9Y5QXsspb3Zhc1ijTu/4Q==
X-Received: by 2002:a4a:d4d6:0:b0:35d:83ed:12eb with SMTP id r22-20020a4ad4d6000000b0035d83ed12ebmr88624oos.57.1650551232749;
        Thu, 21 Apr 2022 07:27:12 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:11 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: (subset) [PATCH 1/3] arm64: dts: qcom: sm8450: Add thermal sensor controllers
Date:   Thu, 21 Apr 2022 09:26:50 -0500
Message-Id: <165055095989.2574292.5086269721501386213.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220410234458.1739279-2-dmitry.baryshkov@linaro.org>
References: <20220410234458.1739279-1-dmitry.baryshkov@linaro.org> <20220410234458.1739279-2-dmitry.baryshkov@linaro.org>
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

On Mon, 11 Apr 2022 02:44:56 +0300, Dmitry Baryshkov wrote:
> From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> The change adds description of two thermal sensor controllers found
> on SM8450.
> 
> 

Applied, thanks!

[1/3] arm64: dts: qcom: sm8450: Add thermal sensor controllers
      commit: 48995e863307bf08a51362a0aafb10e70bdafb4e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
