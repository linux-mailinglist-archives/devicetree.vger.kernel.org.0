Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D24D54F8B0C
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 02:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232943AbiDHAWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 20:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232871AbiDHAWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 20:22:53 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CAE9D082C
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 17:20:51 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id l26so14167684ejx.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 17:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EUO4ZkagqI35g4dyGZeSriotv9HvxG7vujGEgbCcZkU=;
        b=TEef53cSAydlsremUikPhSFLztWvs7WNKJRSiFhTfUee8wYEynR3p69EEhAbLFPoHE
         b29Gzz98Zuy76c+968HMXG1B9jQMg4QDHrYN4LM3amlXHkzn5hT+Pf77Sa8oH5mwkTxV
         oBPd9oZf+Ph6Z2N5mV3Z4xjh9ozw8I7/7moPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EUO4ZkagqI35g4dyGZeSriotv9HvxG7vujGEgbCcZkU=;
        b=t8kQ+sjb5zpifVGVVqsK2+tu2DRmFBdpfBioS+tI9wQapISdO3o74SVOgyRe/O8Daq
         XO+1kt//aQKBo4lUyW13q8hqPYmImW5LYpj/bA7Gw55kQXf+8wGgJKC7MkDVU6N7nmA8
         Y3+SVzVhq1gZuydkoRZv9mRZi3aMvhZNhkJwyBWDlGi6zT+GXHB7U+5g2pLqpFVUxQ6n
         22vTWmpCB2sT5OWPUIn2WzhV7TWR/2xsMALLDgmE5cu0c3Wo8eaQLfbAdg2yqjd7BaEv
         LaQMe9kQ/Te2Eu7ZORmomu+U5Qq8e2SbIkjdJYv5DHtT/CSUZSW9kdH4E3a6Dro3A+wv
         Rj4w==
X-Gm-Message-State: AOAM530XmFA3MSCQFsF/SVbfC17Lco17IjbJ3AGWHPdNq6JIs+nQdRnm
        49hMH6cfTOJ8g+RMLhAqj57x2RpnMvbRXt1wMw4=
X-Google-Smtp-Source: ABdhPJytwrlOwXQFCZLjdppOkX8rBuMTyVYQpJLPVmuwIaIRTHVpVJKALQfTRgMv47AJysMiEIT2Pw==
X-Received: by 2002:a17:907:dab:b0:6df:e51a:b990 with SMTP id go43-20020a1709070dab00b006dfe51ab990mr15365860ejc.573.1649377249428;
        Thu, 07 Apr 2022 17:20:49 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id y17-20020a056402359100b0041926ea1e12sm10138118edc.53.2022.04.07.17.20.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 17:20:48 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id z1so10537198wrg.4
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 17:20:47 -0700 (PDT)
X-Received: by 2002:a5d:674d:0:b0:206:163c:f70c with SMTP id
 l13-20020a5d674d000000b00206163cf70cmr12433627wrw.679.1649377247367; Thu, 07
 Apr 2022 17:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com>
 <1648656179-10347-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=X+QvjwoT2zGP82KW4kD0oMUY6ZgCizSikNX_Uj8dNDqA@mail.gmail.com>
 <392b933f-760c-3c81-1040-c514045df3da@linaro.org> <CAD=FV=W4PYK-t607yjRbfjDjjEZX0KdgHDRukw_vSH8E8EDH6w@mail.gmail.com>
 <CAA8EJppt9XONbgtKfmHmN+==QNqiVJeb8GKJFdZm=yyY-tgmHQ@mail.gmail.com>
 <CAD=FV=U5-sTDLYdkeJWLAOG-0wgxR49VxtwUyUO7z2PuibLGsg@mail.gmail.com>
 <CAA8EJppgfYgQjG8A4LsR-1wmBj3Ku3eO8cKfAYhxjWXL7e3eHg@mail.gmail.com>
 <CAD=FV=V=a1CnT8fqTJR40WoS3BaDQ3xZ=HnHVHqZh=MEmVUZBA@mail.gmail.com>
 <3e5fa57f-d636-879a-b98f-77323d07c156@linaro.org> <CAD=FV=Uibu-kZyix7K4_WVc-+C8xpzTqU4WFy7O=6sukMZrX5g@mail.gmail.com>
 <MW4PR02MB7186245772DAC3E04FA8D1C0E1E69@MW4PR02MB7186.namprd02.prod.outlook.com>
 <CAD=FV=Wk3U7_bVdiCPp8iQ4bcCA_Botemu4pwHeRtgBa3Xk6KQ@mail.gmail.com>
 <c4f086ce-c56f-f7c9-4092-7f2432330d50@quicinc.com> <CAA8EJprdV64jOexEF-XqbkwsNDWBNRRndOAas-QqMHaL=zp9rw@mail.gmail.com>
In-Reply-To: <CAA8EJprdV64jOexEF-XqbkwsNDWBNRRndOAas-QqMHaL=zp9rw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 7 Apr 2022 17:20:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XdRKWFQnJx9AKYmB2p26sXmhjqxLzz+LYyCt7rg+zF6w@mail.gmail.com>
Message-ID: <CAD=FV=XdRKWFQnJx9AKYmB2p26sXmhjqxLzz+LYyCt7rg+zF6w@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm/msm/dp: Add eDP support via aux_bus
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        David Airlie <airlied@linux.ie>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        freedreno <freedreno@lists.freedesktop.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        Sean Paul <seanpaul@chromium.org>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Sean Paul <sean@poorly.run>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 7, 2022 at 4:36 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The ps8640 driver looks 'working by coincidence'. It calls
> dp_aux_populate, then immediately after the function returns it checks
> for the panel. If panel-edp is built as a module, the probe might fail
> easily.
> The anx7625 driver has the same kind of issue. The DP AUX bus is
> populated from the probe() and after some additional work the panel is
> being checked.
> This design is fragile and from my quick glance it can break (or be
> broken) too easy. It reminds me of our drm msm 'probe' loops
> preventing the device to boot completely if the dsi bridge/panel could
> not be probed in time.

I did spend some time thinking about this, at least for ps8640. I
believe that as long as the panel's probe isn't asynchronous.
Basically if the panel isn't ready then ps8640 should return and we'll
retry later. I do remember the probe loops that we used to have with
msm and I don't _think_ this would trigger it.

That being said, if we need to separate out the AUX bus into a
sub-device like we did in sn65dsi86 we certainly could.

-Doug
