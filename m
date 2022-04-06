Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ED014F66BA
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234543AbiDFRTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238769AbiDFRTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:19:00 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B33EC488BFE
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:17:24 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id e189so2695308oia.8
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=5IGW36ATNTFuDtqtwEvQFDb2q7pmTzr4D9NnXRTD/xw=;
        b=KgFwjjlg0aWwCjBZFlRpCgjg7GZDYKuxr2Z+U7XA0a6fFd3pR/iGAhvG4TS/9klOZ2
         /L3AisgNvoo7ZzKMDuPy63d/Gmd0OJk0TiwZy3uZd0eCy3OsqNPLu4aBPdnw5jpxthV/
         DPkrfCtELKlXt8SwElUaVjpdAg42yJBoVRMvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=5IGW36ATNTFuDtqtwEvQFDb2q7pmTzr4D9NnXRTD/xw=;
        b=2aIX3Y9rL2vdbYeIwHJhwgPrzSftcP6V4GoPlwBC9RevCej9rLjzvzAarcsAKUW7TW
         FI3wQTIC5zvr1roq/80LZGx7/vjOXfHBjdOUKwnBUKgsgzPhaBlVmZYzbihObHeeSKPD
         VlhG80qcfJ5drJpcSMOyCkV6e8DrNYr98z3HccEF1HOm+4lwpWL+5DM3tYwpUV71gmWp
         vxnXzgH+j6Gp6CRNQjNhYaNLFxYrINdCVWg3pkb1FNi0YoiiSoE1Jw8OTrm4OZ+VPAfr
         MzRT0gK5UibPRK9XJtVyqZnLtzr5LyesxJCRyyhOlOyqwwiDiMhlLRLuugWmXYXPmK2u
         tYaQ==
X-Gm-Message-State: AOAM530o8Croazjzi/0V7odpdqROZDhX1UaIrccl4qexstDkP3YZ4Y3a
        ISCzgOeDBHi6a4/N5u9mMWQAv6UgUetjfNJ/0c8g8A==
X-Google-Smtp-Source: ABdhPJzZLs+ZKP2BdEfUxGDctInEKn3clfbk7tx1n9Ky2Ieb3JBTI5A6BXvZzDotTaj+FYuqbH3Rcb26fCvH2SVAm3M=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr3603521oie.193.1649258241857; Wed, 06
 Apr 2022 08:17:21 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Apr 2022 08:17:21 -0700
MIME-Version: 1.0
In-Reply-To: <20220406111101.27412-1-quic_mpubbise@quicinc.com>
References: <20220406111101.27412-1-quic_mpubbise@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 6 Apr 2022 08:17:21 -0700
Message-ID: <CAE-0n51vq_V85SKh+hN1Ueas9t1dV7ZFaFyQsG9vukRBAHUc5A@mail.gmail.com>
Subject: Re: [PATCH v11] arm64: dts: qcom: sc7280: Add WPSS remoteproc node
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_sibis@quicinc.com,
        kuabhs@chromium.org, quic_pillair@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Manikanta Pubbisetty (2022-04-06 04:11:01)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index ecbf2b89d896..f61a3e15fa8b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -547,3 +547,6 @@ sw_ctrl: sw-ctrl {
>         };
>  };
>
> +&remoteproc_wpss {
> +       status = "okay";
> +};

This should be before the PINCTRL section in this file. I believe after
the uart node.
