Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A661058F528
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 02:17:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233152AbiHKARf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 20:17:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233418AbiHKARe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 20:17:34 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A4D8FD51
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 17:17:33 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id j5so13927337oih.6
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 17:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc;
        bh=EX3bVclIGOJBNN3kaIwMF8d9L76zR4WsXSoGU82tx4Q=;
        b=Qych/knHnNXGKR2RfvhnaH6NJcqX1D8kLFdg98P+Pc+BJgn3Xs1kGY1kcHUJVQZFNI
         ZQAaDnuSiZ+XNCRlpKRyNyJdG+q8qNVbspcFcidSTOC5vplZgYy4hmdJlkSEd9TR5BaO
         L+DNQhBv34hgmFEbEp/m0Z2+Dz8NSNwiWv8yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=EX3bVclIGOJBNN3kaIwMF8d9L76zR4WsXSoGU82tx4Q=;
        b=fOUTUCoZpftmByAcFrb+fn7P/cqsWf5XyLqLIasQ71/BAEchTQCTc5ntRE1zsAvDGm
         hDx2WQaJLw+MC629kvKPCzj71IiONifaMw/YGUJDderQ4UznfuZWFUsVQYIrTqQZ3pGX
         z0qGpX9e4uRTNIY/YC1B77BonUqJ3U6c3l07PsqQW8c12BHatwr8QiB9j/CPqioXKnk7
         oFcAKjNV5yCsl93NEs+HgFcfs+O9BPy1A4ea6rVl2lt2AmXdPystA6nwulJGLpXC/eaW
         DP7+wKi8O+4aGr0FMNPNklqAnI1mfuHRtgyRr55QWFDNAd1WllA3sWfP8OLkr8Y0iqAD
         eCUw==
X-Gm-Message-State: ACgBeo3AayaVMA7KuUDkpvaK5RF3T0VNUp9tiOW737xD5+sWt3E7G9eE
        1Xp8LyjOtb8vWlH+w+a96odqj4odVzK2K0aZ3We0ow==
X-Google-Smtp-Source: AA6agR7x6T+qgCbnVB685QHwpNlUcxE7GoxSGKeORrKeDT+eh0cnqawvcvvFAUbMZk3Wf2PjS4DnA58135CCQxKtjXw=
X-Received: by 2002:a05:6808:1389:b0:33a:bd16:c4e4 with SMTP id
 c9-20020a056808138900b0033abd16c4e4mr2323919oiw.0.1660177052568; Wed, 10 Aug
 2022 17:17:32 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 10 Aug 2022 19:17:32 -0500
MIME-Version: 1.0
In-Reply-To: <1660117558-21829-4-git-send-email-quic_srivasam@quicinc.com>
References: <1660117558-21829-1-git-send-email-quic_srivasam@quicinc.com> <1660117558-21829-4-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 10 Aug 2022 19:17:32 -0500
Message-ID: <CAE-0n51a1fUx-JnfgWeyx7JRMW0mWC0QquaA2ex=WhuR1H7esA@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] remoteproc: qcom: Add flag in adsp private data structure
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-08-10 00:45:53)
> Add flag in qcom_adsp private data structure and initialize
> it to distinguish ADSP and WPSS modules.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---
> Changes since V2:
>         -- Add is_adsp_sb_needed flag instead of is_wpss.
>
>  drivers/remoteproc/qcom_q6v5_adsp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index 2f3b9f5..d18ec74 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -62,6 +62,7 @@ struct adsp_pil_data {
>         const char *sysmon_name;
>         int ssctl_id;
>         bool is_wpss;
> +       bool is_adsp_sb_needed;

What does 'sb' mean? Self boot? Can you just write it out? And maybe
drop 'is_' prefix because if (is_*) and if (something_needed) reads the
same.
