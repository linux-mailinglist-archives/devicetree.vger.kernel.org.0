Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D680059CF22
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 05:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239718AbiHWDHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 23:07:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239676AbiHWDGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 23:06:36 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2DA15D0E5
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:04:49 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id v125so14620387oie.0
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc;
        bh=doCnz3mK/KgHhiqTgOfwVqyPj1Tu8ONlGH5tzYPy3Ow=;
        b=Qbcl9tEgnwRwsCN1KmXwy/9BeOu11x2a2YxwpY0ZctnNDMjynXiH55grW9tw+fhgy7
         OXQumDj82CLJ89V5sj2rrBhdFNMk6B/7OoegkZeM3rQypjDwIoWFvtbu3zvOYRaf1ce2
         rIA5ZkSe0JPoxfRKK1HCoKYd9C022O7jdDou0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=doCnz3mK/KgHhiqTgOfwVqyPj1Tu8ONlGH5tzYPy3Ow=;
        b=QG+XMJvS2R52WHMdRqFT1CsUq3NgFOx0gkdXEFwvGxaODcjnqSTMBcE8MjgZh6V+IW
         DfjxyOnOEDxYnsLSUa/7zFzGSFenusk2NdjJQu0OZou3ELTYTBbpZnjCYlukEkZ6R/1h
         7Ts+SBoke9ObTPQw3bUmEmftK9zvipBMtLa5PjbWIaZgEGVN9uA5fVqjoz+YyNXejvr8
         +m9YgbCJXIW2uqII0ejMZ4SEEsSwZ8pNW9h6JHA70gt6GZxiz/9VL5SlUgDGCWkt37r8
         +G8T4gjOM2JCFVfw7KtRc1nZh7pnd13MtcDoznB0k5Ns2tfr8ob/86+491dzj+08nGZQ
         6A6A==
X-Gm-Message-State: ACgBeo0raf+MR4ujvvYyHyDRDnjjpFykAnHpwtX+Ig2/T8fDgsPYmKeD
        dVoKJvPV7OPrQkFaevw+4FoYXhcGAA3ue+VnUQkk9w==
X-Google-Smtp-Source: AA6agR490YPWAOawL+dH9dPTDJ7lM+NN/g/KmpiKhw3atii2HBvw1JKAsUUPhafyjqOeYpqxeu0Pkb/jkUeZJ+zsjxo=
X-Received: by 2002:a05:6808:1142:b0:343:86a0:dedc with SMTP id
 u2-20020a056808114200b0034386a0dedcmr522134oiu.44.1661223889399; Mon, 22 Aug
 2022 20:04:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 22:04:49 -0500
MIME-Version: 1.0
In-Reply-To: <1661156523-22611-3-git-send-email-quic_srivasam@quicinc.com>
References: <1661156523-22611-1-git-send-email-quic_srivasam@quicinc.com> <1661156523-22611-3-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 22:04:48 -0500
Message-ID: <CAE-0n51BLuTVa6yBn+rfpoomFDsvFzO0ovm-rRZGmonDvFAVLg@mail.gmail.com>
Subject: Re: [RESEND v5 2/7] remoteproc: qcom: Add flag in adsp private data structure
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

Quoting Srinivasa Rao Mandadapu (2022-08-22 01:21:58)
> Add flag in qcom_adsp private data structure and initialize
> it to distinguish ADSP and WPSS modules.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
