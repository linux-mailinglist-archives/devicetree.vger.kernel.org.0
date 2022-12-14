Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4073564D201
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 22:56:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiLNV4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 16:56:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbiLNV4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 16:56:21 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C027723162
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 13:56:20 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id d82so5418333pfd.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 13:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5hphzZuwvE1cfu805fma1OCvsgxMuaC9NASC7Ut/QdA=;
        b=fRK1cUQxtzyxu17lkIrP0FYGhQYBUq5yMOg/cLC+bCQ1aczzSMDw6nmPJKPz4+0HYJ
         cDJP2+Yq5EpOtxcsOq1fZGvs5FkHrpS3xNgGMFdy/bqhRULat5ESZYVIO1gHnnyIHaJL
         zbZjZgANyXFoDIwDT5mN+b7Ul0r9Y9MsGP/uX+aOHsMv4MBbgRNEOkYXzww2I3/ESevJ
         FfnZIdXFI2T240RX71ShlJHakFFXfY2qYKhcXd6ElSBqESzwlpAw6RDXq05WrTIIt9xb
         rKXh8627SrYN9+UwFUTr6Vrh7vLqaV7SQNc6q/TxqdPKpDryo8KrXUmCUg9uQoDVG2YR
         jGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5hphzZuwvE1cfu805fma1OCvsgxMuaC9NASC7Ut/QdA=;
        b=VuHEi0XZd63KkM51yjYfzSwimdB5tWID/E3wrqHJjveyaQcljZR0gS1iFwALGGmh3W
         LFdpW8vP46bpqb5PAh8ADcp3DYEYLvKN5cX0YGuNf/0pBsYnhtRP7D914Oz0CGcy0VT1
         yQdV+HTN2xews9yUoSSdCGKwgGTsPrIsRmRYHQtUfBzFeCl4Pp6vRoGF6PLb+ipcTiep
         eX3QKx7Jv9608Z1icDSS0K2aVean8qQ6GybzUajsIq/2246EhjbgPzfdV1W82eRQ+trp
         LJV8jvBXF7onKZ82kZje9e8NzE1D4qAmSwXCTcAbS+T866tyyIkri1DPJtyjoZoGyM7E
         odSw==
X-Gm-Message-State: ANoB5pnBpixOBGFsAX7mlZx0MBTaPfxXTFPC6VhQua1AHYn30qU9HijD
        OTonwVQuY8ctFHm6UhHBxPBhhuBxS7zJI1l8aQjIVA==
X-Google-Smtp-Source: AA0mqf4mO+XCDC7wHKlPwOrpShA5EsIeD/HJ8BbRLleFcQIsD4uq2Bhj5tzIRiRSSugKVWKo3woRC8oBsz8qJptXrzc=
X-Received: by 2002:a63:334e:0:b0:479:2227:3aa1 with SMTP id
 z75-20020a63334e000000b0047922273aa1mr1065030pgz.595.1671054980062; Wed, 14
 Dec 2022 13:56:20 -0800 (PST)
MIME-Version: 1.0
References: <Yyj7wJlqJkCwObRn@lx2k> <20221211084631.3942082-1-bigunclemax@gmail.com>
In-Reply-To: <20221211084631.3942082-1-bigunclemax@gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 14 Dec 2022 13:55:43 -0800
Message-ID: <CAGETcx8g57m+0WANjEk3wRu8v-Aw4uPv3npERt=5-wyKhZ2vJg@mail.gmail.com>
Subject: Re: fw_devlink=on breaks probing devices when of_platform_populate()
 is used
To:     Maksim Kiselev <bigunclemax@gmail.com>
Cc:     olof@lixom.net, ansuelsmth@gmail.com, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        rafael@kernel.org, zajec5@gmail.com, fido_max@inbox.ru,
        =bigunclemax@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 11, 2022 at 12:46 AM Maksim Kiselev <bigunclemax@gmail.com> wrote:
>
>
> Hi, I have the same problem.
> https://lore.kernel.org/all/CALHCpMgEZjnR39upkR6iozSk-b5A_GHRo9rcDSPXzzQi6x_qCw@mail.gmail.com/
>
> I think the root of the problem was the choice of 'compatible'
> device tree property to marking mtd partition node as a nvmem provider.
>
> This property used only inside 'mtd_nvmem_add' function to setup
> 'no_of_node' flag.
>
> > config.no_of_node = !of_device_is_compatible(node, "nvmem-cells");
>
> This is how this flag processed by 'nvmem_register' function.
>
> >       if (config->of_node)
> >               nvmem->dev.of_node = config->of_node;
> >       else if (!config->no_of_node)
> >               nvmem->dev.of_node = config->dev->of_node;
>
> Thats all, there is no such driver which compatible with 'nvmem-cells'.
>
>
> So, maybe we should change the 'compatible' property to something else?

Sorry about the accidental HTML in my previous reply. Resending as plain text.

I have a patch series [1](v1 sent out a while back) that stops
depending on the existence of "compatible" property for fw_devlink to
work. I had a few issues that I have fixes for that were tested in the
thread. I've been meaning to send out a v2 with all those fixes rolled
in. I'll try to get that out this week. Hopefully that'll address the
issues assuming Maksim's analysis about "compatible" is correct. If
not, I can take a closer look after that.

[1] - https://lore.kernel.org/lkml/20220810060040.321697-1-saravanak@google.com/

-Saravana
