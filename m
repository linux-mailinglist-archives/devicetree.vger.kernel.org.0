Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9D74E3609
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 02:42:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234986AbiCVBmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 21:42:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234999AbiCVBmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 21:42:21 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 630392980E
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 18:40:55 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id ay7so18141617oib.8
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 18:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=6cy5E/85aL5JmF2pjEIWOn8cdkPn4kZuLVsVcwh0VCw=;
        b=ZG2mTl4hRiPGIsQOCem02L1efR0uk4lEtDZ2klTX+4ywa0MAPregei5qmLCo3RwkSm
         TmHLpM7DRwjVbB6rphkHqPT5E1uK82uOJOw2YOU7pszylbs0rmkL77FKtvslchjITSZ7
         6jhrRzZbyHRcpoDjgRH+ImYAQ6OBKYpPbdKTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=6cy5E/85aL5JmF2pjEIWOn8cdkPn4kZuLVsVcwh0VCw=;
        b=GhGE1rkekBWWLG+kNXfyM5dhiB0QipSmpgcHwixktJcYkYs5881BXWcQS+ORZ/1xQE
         UEROoKA8oRhIONzdrZ8ukr6QyQOSFHh6Tmj1FjP1Ugm4LbGMHOfCmnawKy7YyDCxldmQ
         RVQ4GRFhF3uzexk8oz/8TyiyH2WSAEnUgmxqik4bC9G6C5NuJ7v0bCAGozZSdqjLG7xy
         dlpob2Ie/mmeVzgyoN/2M2fCn7Svpoaiysyv/KCq0/CQ57DFbE9AO66RsLmdMz80q9i1
         HX1c8wjK9v8JVdQpVW3nN918MBLQuH0Zl0upEpUkzxiVc7Brmi0z38/ry68WkVSK8NJB
         QeJQ==
X-Gm-Message-State: AOAM530IyF8aiEpxZZmb83VTRQNB6LsvUVfmH8ylfJIUXr/Hasz1uX11
        KWS6SjSPQMJU8CZ9POAk88ZRtLfoZD+xbCyyBkrdLTxFnsc=
X-Google-Smtp-Source: ABdhPJw/+VAE25qRttG0wCMfm6qrIFot8Qt6PjAcz4RU30vU3l71cCaYqSwzmv5nHPkBwcOJjVsoFQFVl9pP99Ke9k8=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr903174oie.193.1647913254705; Mon, 21
 Mar 2022 18:40:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Mar 2022 02:40:54 +0100
MIME-Version: 1.0
In-Reply-To: <YjknOFMere5DG5He@robh.at.kernel.org>
References: <20220321191100.1993-1-swboyd@chromium.org> <20220321191100.1993-2-swboyd@chromium.org>
 <YjknOFMere5DG5He@robh.at.kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 22 Mar 2022 02:40:54 +0100
Message-ID: <CAE-0n52o+XsyzF5GzRQ9piPYnntBTtpo+t1b6bChT-iUVg=aFg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: chrome: Add ChromeOS fingerprint binding
To:     Rob Herring <robh@kernel.org>
Cc:     Benson Leung <bleung@chromium.org>, linux-kernel@vger.kernel.org,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2022-03-21 18:32:40)
> On Mon, Mar 21, 2022 at 12:10:57PM -0700, Stephen Boyd wrote:
> > Add a binding to describe the fingerprint processor found on Chromebooks
> > with a fingerprint sensor. Previously we've been describing this with
> > the google,cros-ec-spi binding but it lacks gpio and regulator control
> > used during firmware flashing.
>
> Then 'google,cros-ec-spi' should be a fallback?

Sure that's fine. Then the second patch isn't needed either.
