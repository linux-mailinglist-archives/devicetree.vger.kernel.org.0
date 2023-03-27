Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90BC26CA94E
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 17:41:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232968AbjC0PlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 11:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233004AbjC0Pkv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 11:40:51 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2AD42D4E
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679931606;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=YdanRT+ne+cfkfmiIxrWznhoBAlaxgbURB+eWBN8fi8=;
        b=D7sI+TYjFdO0RjT4lKdCP4HEtnyPOkwuBeGBPMoxIvQ/rJVAWBxOZ6hytARSJ/C9jCrKPM
        /rT0MVFhPEf0LnvBDjjWZr6VhVYWYEXD4BgPhKbCitUWc0rEtvz6JOWzHJMCcSRLV6M7pI
        bnxOHz/JvzBrhCEDJoQVLoShC6ShppQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-248-x4NB4JnaO3eOZGGKZQffFQ-1; Mon, 27 Mar 2023 11:40:03 -0400
X-MC-Unique: x4NB4JnaO3eOZGGKZQffFQ-1
Received: by mail-wm1-f69.google.com with SMTP id l16-20020a05600c4f1000b003ef6ed5f645so1586485wmq.9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 08:39:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679931599;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdanRT+ne+cfkfmiIxrWznhoBAlaxgbURB+eWBN8fi8=;
        b=xTpDzx1uRgOmMeaQSJHEqKS4H5Y53m3Rd/t1eeaxDJ3iwRbRyqwj7WoXeBEQQjuVpN
         Imleh4fRiuvmJn2C3EgtEv/LFyyrqqGDZkY3PxwdCpnrfHcEBSCnp1mXagc/pPTC2eNw
         cj+9T5Q2XjVYnbhG8RBOXf8ynjHfWM8xNTVW9TaWNodNW3iLDei/w0FtLz1C+AFN5vP/
         WBDWcVFc+9pWglyh7XoktoO39WU709viz1jydbmaXYCkaG5hW0HO6LFDB7+6mlhNsTjh
         j84OOLK/vwSIxWhJPv6nO3w96AOPsl1VwtQPcxfRvVwE1RcE1OZ5fGQq82sib0vSToEW
         tkKw==
X-Gm-Message-State: AO0yUKXg9uhilTtfboHpyeIW68x920+rY83lJvl23UP5+O9tG2lRCoZy
        AlvDCvu+7tUSKeazgR+kS7IGzNo/aqeybMEJlCWmSZrQEajkyqFRpntz4RYLlPTBoxWBxrj157W
        QHlXH+5D/IMeHQ+DPp6HwhA==
X-Received: by 2002:a7b:cd99:0:b0:3ee:4dc0:d4f6 with SMTP id y25-20020a7bcd99000000b003ee4dc0d4f6mr9265586wmj.17.1679931599117;
        Mon, 27 Mar 2023 08:39:59 -0700 (PDT)
X-Google-Smtp-Source: AK7set+YJMEZ0pdLBD7p1SuDbHQKB75TdGkUhh6pIw6rpYOFeeHQ4g+zqAh/Fbj3rpVnKJacGZ1JWQ==
X-Received: by 2002:a7b:cd99:0:b0:3ee:4dc0:d4f6 with SMTP id y25-20020a7bcd99000000b003ee4dc0d4f6mr9265572wmj.17.1679931598776;
        Mon, 27 Mar 2023 08:39:58 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i6-20020a05600c354600b003ede6540190sm9439951wmq.0.2023.03.27.08.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 08:39:58 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc:     linux-kernel@vger.kernel.org,
        Robert Mader <robert.mader@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Martijn Braam <martijn@brixit.nl>,
        Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jarrah Gosbell <kernel@undef.tools>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <20230327130147.wgxl2qayhzsi2xak@core>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
Date:   Mon, 27 Mar 2023 17:39:57 +0200
Message-ID: <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ond=C5=99ej Jirman <megi@xff.cz> writes:

Hell Ond=C5=99ej,

> Hi Javier,
>
> I've tried the patch on top of linus/master and it works as expected. My
> DRM test app shows 16.669ms between frames. The display output is ok on
> developer batch pinephone pro, and is corrupted on production version.
> Display also doesn't come back after blanking. All as expected.
>
> Tested-by: Ondrej Jirman <megi@xff.cz>
>

Thanks for testing.

> A few more comments below.
>

I'm OK with these comments but I did a git diff with your orange-pi-6.3
branch just before posting and this was the latest that's in your tree.

So feel free to either post a v3 addressing the things you are pointing
out or lets land this and we can post any further cleanups on top IMO.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

