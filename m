Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F0D662249F
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 08:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbiKIHaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 02:30:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiKIHaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 02:30:12 -0500
Received: from gw.atmark-techno.com (gw.atmark-techno.com [13.115.124.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A110119029
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 23:30:10 -0800 (PST)
Received: from gw.atmark-techno.com (localhost [127.0.0.1])
        by gw.atmark-techno.com (Postfix) with ESMTP id 0D8936013E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 16:30:09 +0900 (JST)
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
        by gw.atmark-techno.com (Postfix) with ESMTPS id B7E066013A
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 16:30:06 +0900 (JST)
Received: by mail-pj1-f69.google.com with SMTP id bt19-20020a17090af01300b00213c7cd1083so7357644pjb.8
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 23:30:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AkV6CPfdFGVjPpghLvJtNFPDkktXoQm93iA3ev5ef2A=;
        b=gMWaC5crBMoRCxPhgl3FZrbBJkmm9wVJpJ8M5rU/+JdzHjZMgB8wjX0SDk+nWtoQ2t
         XmPb3N3aeNkyJocqe1D5E8gBjQN8Pbj2qXHu7beFclIhJiLVdx1/mZ8PuRL/tn8UyiQS
         go1qDAAScr69X2wnPDOR3V+hdv2t7eynYK4+mOg4M4WyRMoxSA/BxnKNkUh5cJUC122O
         wun0IWfgxks7KewGmSgFu8gJtXjCH+L4i+odzIFcVVgQRuBsOo3KtZdlNX22+qotmfYx
         QSrnKJ93FKLe8HQU2hbC0N4GcreV0MwtZGh8OdtMojFmSANyY2/0Hu51bp+WrNs2ifCZ
         wWhA==
X-Gm-Message-State: ANoB5pnmeBBWLFRX/yB/4FDsavXPuFkbv1ruMD3yyLrj+Vtdty/typyV
        hoSyVK1p58ekcGcRN/Kr57Si26Yme37188j14Oe1KsnOpgCWKoNwdPG1CUW7LXWxCDRktg+Nq61
        wvUL2VXlHcMMzT+XuMr8EmnduCg==
X-Received: by 2002:a17:902:cf03:b0:179:b7fe:dc90 with SMTP id i3-20020a170902cf0300b00179b7fedc90mr8963561plg.112.1667979004657;
        Tue, 08 Nov 2022 23:30:04 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6FLsf7+45mbMx7ILZrcvfGJp5vcQmaIT620Rjw295aA7uZKazLCzKceVCNRsLqHiFhZv0ihw==
X-Received: by 2002:a17:902:cf03:b0:179:b7fe:dc90 with SMTP id i3-20020a170902cf0300b00179b7fedc90mr8963543plg.112.1667979004304;
        Tue, 08 Nov 2022 23:30:04 -0800 (PST)
Received: from pc-zest.atmarktech (35.112.198.104.bc.googleusercontent.com. [104.198.112.35])
        by smtp.gmail.com with ESMTPSA id i4-20020a056a00004400b0056164b52bd8sm7607836pfk.32.2022.11.08.23.30.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Nov 2022 23:30:03 -0800 (PST)
Received: from martinet by pc-zest.atmarktech with local (Exim 4.96)
        (envelope-from <martinet@pc-zest>)
        id 1osfX8-00EHb8-1s;
        Wed, 09 Nov 2022 16:30:02 +0900
Date:   Wed, 9 Nov 2022 16:29:52 +0900
From:   Dominique Martinet <dominique.martinet@atmark-techno.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Marcel Holtmann <marcel@holtmann.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S . Miller" <davem@davemloft.net>, mizo@atmark-techno.com
Subject: Re: [RFC PATCH 1/2] dt-bindings: net: h4-bluetooth: add new bindings
 for hci_h4
Message-ID: <Y2tW8EMmhTpCwitM@atmark-techno.com>
References: <CAL_JsqKCb2ZA+CLTVnGBMjp6zu0yw-rSFjWRg2S3hA7S6h-XEA@mail.gmail.com>
 <6a4f7104-8b6f-7dcd-a7ac-f866956e31d6@linaro.org>
 <Y2rsQowbtvOdmQO9@atmark-techno.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y2rsQowbtvOdmQO9@atmark-techno.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dominique Martinet wrote on Wed, Nov 09, 2022 at 08:54:42AM +0900:
> This is a pretty terrible design, as the Bluetooth side cannot actually
> know when the device is ready as the initialization takes place, but
> that means there really aren't any property to give here
> 
> (I haven't reproduced during normal boot, but in particular if I run
> bluetoothd before loading the wifi driver, I need to unbind/bind the
> serial device from the hci_uart_h4 driver to recover bluetooth...
> With that in mind it might actually be best to try to coordinate this
> from userspace with btattach after all, and I'd be happy with that if I
> didn't have to fight our init system so much, but as things stand having
> it autoloaded by the kernel is more convenient for us... Which is
> admitedly a weak reason for you all, feel free to tell me this isn't
> viable)

This actually hasn't taken long to bite us: while the driver does work,
we get error messages early on before the firmware is loaded.
(In hindsight, I probably should have waited a few days before sending
this...)


My current workaround is to return EPROBE_DEFER until we can find a
netdev with a known name in the init namespace, but that isn't really
something I'd consider upstreamable for obvious reasons (interfaces can
be renamed or moved to different namespaces so this is inherently racy
and it's just out of place in BT code)

That makes these two patches on their own rather useless as well, so
unless one of you have an idea that's less ugly I'd guess just dropping
this is the way to go, as much as I dislike the idea of adding more
non-upstream code than we already have :(

Thank you both for your time, the replies have been very helpful and
I'll remember for next time I try to submit something!

And if you have a suggestion, I'll be happy to do some legwork to clean
this mess, so feel free to ask :)


Thanks,
-- 
Dominique


