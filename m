Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4726F59CF31
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 05:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239959AbiHWDJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 23:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239970AbiHWDIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 23:08:25 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF65E5F42
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:06:27 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-11c9af8dd3eso14940621fac.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc;
        bh=ntnuN1Cbf4zs1wTSTN7LzLd8igQL/4ijLCx6okIoVxk=;
        b=Lh9cBLkVXyylxnaHrcvdYQsWQairdmSDoTPgCznyRmSjDMDiILp++/TGvKExXeo6O1
         85c08Zk9eT8u1vBA1/vCqt20YoTrWBS1gi1I+Zjb0EriSCQzU61mIi/SCMOiKJ0wzppI
         SCu9NGHHlhnXWqF2T/5TztWPz+ls/9dpdeHNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=ntnuN1Cbf4zs1wTSTN7LzLd8igQL/4ijLCx6okIoVxk=;
        b=KsxRaT0U2sbLIzwJNjIyP5PovRBZCfwltwZnoaZgziEQvaeZC6XsM8lbv+kbk+V9BS
         35RgSYt8QiSmkf2ZnXs9mdrfjN6yHlQ7GcZNpdr3GVaXTRYM+mekTE/oA0SoKFdWSJtT
         7rYiVcxbsitFfLwsHJ/5wSomFp9gsBJ90rwB9jLp0iLE2NPorAtcmErbfO6K7BZC0jOs
         VXMCBLO22WySnjVaJSuIh6VKd0tMWMa1OggaTMs/+cshYP+ZoLxMjaW0mWdLDcZ6kfyK
         CMOld/kMpoRxYKkzwBKso8m7rEkeedhledIY9kIthU9xobZ63uVuJ4kb4961KUtLYH2T
         NOWg==
X-Gm-Message-State: ACgBeo2RDtGn8ctKj47h1ZXX3dOJqOM0NroB5m/1nPVPWzJ3Lwz2UmGr
        mvwu9m+oHG0gLDNvuk+uF9vi5I8BOzxHRnAUWECcrg==
X-Google-Smtp-Source: AA6agR5fL+F4upoZF82AsrgsRSYaDfJ86q9IfWZPbsEXsxBIolOFrRiht9F3qacrKx0bRyZhfJUdcElQgFukBVJ6feo=
X-Received: by 2002:a05:6870:e408:b0:11c:37ad:773a with SMTP id
 n8-20020a056870e40800b0011c37ad773amr564465oag.44.1661223987166; Mon, 22 Aug
 2022 20:06:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 22:06:26 -0500
MIME-Version: 1.0
In-Reply-To: <1661156523-22611-5-git-send-email-quic_srivasam@quicinc.com>
References: <1661156523-22611-1-git-send-email-quic_srivasam@quicinc.com> <1661156523-22611-5-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 22:06:26 -0500
Message-ID: <CAE-0n52thpGPOZHtSx=P_ki1HApEKhK+2aerOKk5opY=Q9MSxw@mail.gmail.com>
Subject: Re: [RESEND v5 4/7] remoteproc: qcom: Replace hard coded values with macros
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
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

Quoting Srinivasa Rao Mandadapu (2022-08-22 01:22:00)
> Replace hard coded values of QDSP6 boot control reg params
> with appropriate macro names.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
