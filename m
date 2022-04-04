Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711ED4F1E97
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 00:25:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244006AbiDDWKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 18:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356340AbiDDWFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 18:05:39 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC864A3C9
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 14:43:02 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-2eb543fe73eso56205807b3.5
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 14:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mr13sTe9S5P+5Fhg+wh22VL3ia9fpyUX966OBWfTLkc=;
        b=oYZ8dVpTOFeU7D+TM02AN6Wr769JI0IIjpYWeqQ+Z3SGqPZywVpsTsHx6BmT4To0GA
         MTCmL6WOm3FUQxWUYlYYJDouiyVvKjXb+uSAzWriVCAm8BvxKmxLEJ0BjsL+NDYgjynE
         DDBjsZU1pQ1KUiUzEsLXM6gUhXdVrLYiXRxq7RkCasuovcw4YlKqDB2AIUlABGaZ4hzo
         HtEqyCLYYhunnCWZ/1JMpRiOOL4VsmDInF+XNSjxH8iZjCttPCdrl/zvHUP3qJ+K68Z5
         7RIIAyLsx38vl2myRcoO6cZKIdiSBTJ67WaHGesIPR+39IkAhf0/JuhEDYhC50lYpQMN
         QEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mr13sTe9S5P+5Fhg+wh22VL3ia9fpyUX966OBWfTLkc=;
        b=RXFe8PaMI2tKgzc1uunZx9CorKwhTVlheJAhvW5rAImDTzjqnrNq8rUhio6rUAEVrf
         l2Sk4fWXK5swtiFCzoaZdPF94lkcO2OUeLLZzRRXgtuW5OlrMhO8o/OjEMDokDDKSb1x
         Raex4mRZsI2Xd2oOyMHFZVF3ppn4P+ix35AuBrKds4dtJegLFeIYFB2lDzRc/1O5RgzR
         GM+Mzu26hjVnxNV8ogqIpm3JK2CyS0hhBmWkeWe2BTkEFoUBp8rtnyYky03v8JIVjUIn
         wS1nNQ00cIoUhxQ6QgBAnD/gasmmoofqXtQXeRFoYQY0U9PrZmAG1cX1vaMPDCYaHUd6
         +QmA==
X-Gm-Message-State: AOAM5331ujOmrKu7KWDVZTPtWCK8ymvkSLyVYgnSno8sD5doUuudFye5
        fzqeZU9QpAtqRDdHNwni4VdqLPaKmAar+l9MbKxtFw==
X-Google-Smtp-Source: ABdhPJzt85GxkABljpdoViylC1cpfWRSKb9qPQ1y+8bvWSMoJfBDA7k01Qotg3Ej9T1lzLK5pHJX09a0DIOLJBz0yD8=
X-Received: by 2002:a0d:e616:0:b0:2eb:450c:940b with SMTP id
 p22-20020a0de616000000b002eb450c940bmr133822ywe.114.1649108580856; Mon, 04
 Apr 2022 14:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220228172528.3489-1-srinivas.kandagatla@linaro.org> <Yh+QeWEufbp2JLo+@matsya>
In-Reply-To: <Yh+QeWEufbp2JLo+@matsya>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Tue, 5 Apr 2022 03:12:23 +0530
Message-ID: <CAMi1Hd0ZCM8nVXTyWYkZgk9LMXcKZGBVAJ9LxEj1LR1px+bmFA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] soundwire: qcom: add pm runtime support
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        robh+dt@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Mar 2022 at 21:13, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 28-02-22, 17:25, Srinivas Kandagatla wrote:
> > This patchset adds pm runtime support to Qualcomm SounWire Controller using
> > SoundWire Clock Stop and Wake up using Headset events on supported instances and
> > instances like WSA which do not support clock stop a soft reset of controller
> > along with full rest of slaves is done to resume from a low power state.
> >
> > Tested it on SM8250 MTP and Dragon Board DB845c
>
> Applied, thanks
>

Hi, this patch series broke audio on SDM845 running AOSP. I can
reproduce it on both DB845c and PocoF1
https://www.toptal.com/developers/hastebin/raw/rodazupayu. It is not
100% reproducible but can be triggered on every alternate reboot or
so.

Regards,
Amit Pundir

> --
> ~Vinod
