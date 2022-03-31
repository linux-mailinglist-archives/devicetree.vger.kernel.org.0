Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EAF74EE4BD
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234663AbiCaX3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiCaX3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:29:10 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72ECC24D9A6
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:27:21 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id lr4so2338959ejb.11
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i0Y8uJxAPTn+lPcbjKZMDigfiYGLfvVvyFJ8YmiOb0U=;
        b=ZTUl4ukv0e2NXaBF5xnMO9o+oFVlY2n2XoA0kUxOx6skIG9dTSaA7oECXPy4k5G/qR
         MtnM41dTUEMY98MWV1Q7y85uveZ3vNyBVCBdKuiNa70cypt1qBwokiaB5piPWsRGwfMf
         lQ3VnxZKPPbfZxfyG6Kj11Hei7OeO9IuoWwMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i0Y8uJxAPTn+lPcbjKZMDigfiYGLfvVvyFJ8YmiOb0U=;
        b=tZNzrIeUv5Qk5UFfwCFY4EV0yeeTPbMwjzhsjXRdKmv9LUpDCQDEnEL/x89/7VFZB9
         gbcc9mtlOq2efVr7RfblZogPL0k7w+n8sY04wgLAR5qFX6X16dU5IPhemrt/u5Ic+EEm
         uD2hfN3JexSTGUQVdQhg35XtsoyZPOT7DtmGDsr8/+naMgKhEWzfwLmml+pvFTx5DRaW
         9fEoeTAEOpr7sklnekBeqbhqgfTd0m68GQ8iV4BlCHm/91Wg8AOTni1CsH0y+Ezjqddi
         uzzMAaB86K1hLXJg09da+ZlMtqEaCrNhDm1VBGsMWwqIhoe0emW9fJw2v3c2J9SGZGvp
         6OWQ==
X-Gm-Message-State: AOAM532uxty/5Chr+BEbwenQvuzCVxOqkhRIw0cEDW6Rvjk1gWNuZ746
        qAAbOmleIAYnUX1DvmnifnYcceTaOxqMFH3J
X-Google-Smtp-Source: ABdhPJz2DtpFmhN5mnkuZua5aJ0Q3VW8ts6Ju68oo0pPHbkdAKzFJA6dukjtuIG9+omuekQW4iOAhQ==
X-Received: by 2002:a17:906:3a4f:b0:6cf:86e0:586c with SMTP id a15-20020a1709063a4f00b006cf86e0586cmr6815329ejf.626.1648769239764;
        Thu, 31 Mar 2022 16:27:19 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id u10-20020a50d94a000000b004131aa2525esm386998edj.49.2022.03.31.16.27.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 16:27:19 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id i4so1827609wrb.5
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:27:19 -0700 (PDT)
X-Received: by 2002:a5d:4491:0:b0:203:f63a:e89b with SMTP id
 j17-20020a5d4491000000b00203f63ae89bmr5615220wrq.342.1648768934136; Thu, 31
 Mar 2022 16:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com> <1648656179-10347-2-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1648656179-10347-2-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 31 Mar 2022 16:22:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+QvjwoT2zGP82KW4kD0oMUY6ZgCizSikNX_Uj8dNDqA@mail.gmail.com>
Message-ID: <CAD=FV=X+QvjwoT2zGP82KW4kD0oMUY6ZgCizSikNX_Uj8dNDqA@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm/msm/dp: Add eDP support via aux_bus
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        quic_aravindh@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 30, 2022 at 9:03 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> @@ -1547,6 +1593,10 @@ int msm_dp_modeset_init(struct msm_dp *dp_display, struct drm_device *dev,
>
>         dp_display->encoder = encoder;
>
> +       ret = dp_display_get_next_bridge(dp_display);
> +       if (ret)
> +               return ret;

It feels weird to me that this is in a function called "modeset_init",
though I certainly don't know the structure of the MSM display code
well enough to fully comment. My expectation would have been that
devm_of_dp_aux_populate_ep_devices() would have been called from your
probe routine and then you would have returned -EPROBE_DEFER from your
probe if you were unable to find the panel afterwards.

Huh, but I guess you _are_ getting called (indirectly) from
dpu_kms_hw_init() and I can't imagine AUX transfers working before
that function is called, so maybe I should just accept that it's
complicated and let those who understand this driver better confirm
that it's OK. ;-)


> @@ -140,5 +140,6 @@ struct dp_parser {
>   * can be parsed using this module.
>   */
>  struct dp_parser *dp_parser_get(struct platform_device *pdev);
> +int dp_parser_find_next_bridge(struct dp_parser *parser);

Everything else in this file is described w/ kerneldoc. Shouldn't your
function also have a kerneldoc comment?
