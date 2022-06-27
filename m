Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D239355CE86
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:05:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241049AbiF0UEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:04:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240971AbiF0UDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:55 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998621CB1F
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:51 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-101bb9275bcso14292927fac.8
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uBL8T3g3R0Pq3whUkb/j5eJUSIuSh7+BTEsAjLrbttw=;
        b=tByXVs4oLqp70UnWrAelQLgAZ02AjGHlRCOv88PrYBSqr+tpiHU5Q+f/xG7zbiFenC
         tiSrYxs9TC477G06hNDlrjxga5jvL580iaOVQGS6EHHO8M55FCPlukXVJTUMpkwdzO5P
         bt9xGTTeA+6oUcHAnORPIsaOH90m5W/HxuLc0sGWNLScVokcy2cOBVkXLeqZNkhZR/HJ
         +9gIG3dMRBkp3pA91MTASZcI6SxfpD2vHTSBtwEsD9C/ME9MWc+SZNyA9AzpAgFu3TGm
         QNnpCpBGzCQzCXk0nqqQ1th0UuAX4myDZ9b36KaYhbKCKvwhJMxcWNugDfPdLOUI5ira
         AR2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uBL8T3g3R0Pq3whUkb/j5eJUSIuSh7+BTEsAjLrbttw=;
        b=wgwtVofPuZ/OKkq7Bq30wJBAlRXj0fndYEvDiENonWJGMXsP8g9x10bz/rpnFn/Qd8
         aLsXcDa7buLYeygVJrsiVMjKte0L9rU8pLlBo8tO+hkSQY/mKI+omSyIdQrZFt/NXzhG
         AuxAeZIXRAUvKdeMD5ytyzaz8dzTUTAzj6NI9v7HDv8n3x+nPHoDap3AbUIaviZx2UQ0
         5OFV3Js8qhwC4sdQRpvVZBBomBa5TQOjAV11ELws0o5E+ZS9+Uq3o2tRg5S0ZuuVJCXL
         bti7bCLcBitxFCzpBmEnKIc3phEXE381U0Axgf18q4Sqhn2/fLaRqnnG9DLsjzB5PG7i
         jSdw==
X-Gm-Message-State: AJIora+gcpojqQ2lb7xkkvOA3i8NxoKbeCSfGiU4zALFdZ9nFpuSGTFM
        G/y9BK9QsOHXkrz7zp4ZKdPatg==
X-Google-Smtp-Source: AGRyM1uyXxkCopnKmMrwc7YTmNhF77XP6v4iLuNzB3mcEoxBcwwNkqmrJxoiPfBIjXYpp1D8SYTD2Q==
X-Received: by 2002:a05:6870:23a6:b0:f2:2dfd:d6d5 with SMTP id e38-20020a05687023a600b000f22dfdd6d5mr8502700oap.100.1656360230798;
        Mon, 27 Jun 2022 13:03:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:49 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     linux-kernel@vger.kernel.org, quic_kalyant@quicinc.com,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org,
        dianders@chromium.org
Subject: Re: (subset) [PATCH v7 0/5] Update mdp clk to max supported value to support higher refresh rates
Date:   Mon, 27 Jun 2022 15:03:04 -0500
Message-Id: <165636016347.3080661.10709114868531823730.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1647919631-14447-1-git-send-email-quic_vpolimer@quicinc.com>
References: <1647919631-14447-1-git-send-email-quic_vpolimer@quicinc.com>
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

On Tue, 22 Mar 2022 08:57:06 +0530, Vinod Polimera wrote:
> Drop the assigned clock rate property and vote on the mdp clock to
> max frequency during bind/probe sequence.
> 
> Changes in v2:
> - Remove assigned-clock-rate property and set mdp clk during
> resume sequence.
> - Add fixes tag.
> 
> [...]

Applied, thanks!

[2/5] arm64: dts: qcom: sm7280: remove assigned-clock-rate property for mdp clk
      commit: 5241fd7fee9bee0cffa33f6d074194e94831e467
[3/5] arm64: dts: qcom: sm7180: remove assigned-clock-rate property for mdp clk
      commit: aa4ae511a760e66f22641d9b9b6052b469df3c10
[4/5] arm64: dts: qcom: sdm845: remove assigned-clock-rate property for mdp clk
      commit: 0b24829fd74cf954b3a02e9e4c4da3c098c69fbc
[5/5] arm64: dts: qcom: sm8250: remove assigned-clock-rate property for mdp clk
      commit: 6edb323837909462d493f22c07a38a23ef44f944

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
