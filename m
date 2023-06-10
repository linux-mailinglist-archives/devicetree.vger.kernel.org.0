Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E75372AFB0
	for <lists+devicetree@lfdr.de>; Sun, 11 Jun 2023 01:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjFJXTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 19:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230325AbjFJXTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 19:19:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C5635BB
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 16:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686439119;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=D8heU8KT8N66egWqP5syvdzwEBmAm1JS5VTvHxIRqqk=;
        b=PMu+pFO+UhUTMKhhDDGdLkZgEB/+99uV8MW2T0dPicXOeaxhQ1PeNmN1dsIRXdSfqlzQXM
        hr78pmSFO1DOBXnXjFTE8yp39bk6HWVwzAbFA889GSXSCsULlr2ddFVM8t1aHxPvLrc5Oo
        eYwyMWcmhPVLV365g0KGCvQxKklw9u0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-278-bLC6BymCPk2YNTDKpXdoUw-1; Sat, 10 Jun 2023 19:18:31 -0400
X-MC-Unique: bLC6BymCPk2YNTDKpXdoUw-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-30e55b42af1so1731926f8f.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 16:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686439110; x=1689031110;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D8heU8KT8N66egWqP5syvdzwEBmAm1JS5VTvHxIRqqk=;
        b=H6EHkAUnDpzWeyUArZposv+Cl3/Bc46XlsAvwOZZRz5z368d+v7chQ1N0gxBGl7wAb
         OChOz0JyFMunUILWW2eOuIHR5VTs7uqdgoKHkaHO8S1PhXQwYzK3s58aQryoYcrnb2BS
         Wu+iSQBOVHfgpXdItMsDEyyRSrlbBfpC18XlUldBXhM0rvFLsG3bDR7r2HSOV2S+t8Kq
         CJMuBH7zbqZgujyzmu1Uu5PjaOxFSNLsJXG4Vyl2ng2Bi+NDS2Vy550EKQYF7cQH4FoE
         SKunt9v6VXD5XEiudrLI/WTxFNxbXjtIf3R8DM9o7DG6Y54jd8qaWV7gMQj8ptxpqeqo
         PXwg==
X-Gm-Message-State: AC+VfDyHVJEkx6t4i8GzQ67DP6/eemuFwNS2p8yYIolF6H84H7/kpetv
        uLqtncFvTnu2WqtLR2sc4dkgSxMMW2HwYYc3FKZqR4d9yh8HkZRyIw1JqLqbB8v4yA//ZUU7ogE
        l9Tkmhbui+oX9ozt90tk5E7uQX/nf4Q==
X-Received: by 2002:a5d:4983:0:b0:30a:dfb4:e300 with SMTP id r3-20020a5d4983000000b0030adfb4e300mr1844984wrq.28.1686439110018;
        Sat, 10 Jun 2023 16:18:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7jG5fprO8u5UBAEpGm2MDfpLiBPONYgvdFhUff4goghNW/o4Wo5d0iU8B2i0qViPYwH7b8Ow==
X-Received: by 2002:a5d:4983:0:b0:30a:dfb4:e300 with SMTP id r3-20020a5d4983000000b0030adfb4e300mr1844970wrq.28.1686439109700;
        Sat, 10 Jun 2023 16:18:29 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n6-20020a7bcbc6000000b003f6f6a6e769sm6807965wmi.17.2023.06.10.16.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 16:18:29 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] dt-bindings: display: ssd1307fb: Remove default
 width and height values
In-Reply-To: <20230610-unused-engaged-c1f4119cff08@spud>
References: <20230609170941.1150941-1-javierm@redhat.com>
 <20230609170941.1150941-3-javierm@redhat.com>
 <20230610-opposite-quality-81d4a1561c88@spud>
 <87r0qj19zs.fsf@minerva.mail-host-address-is-not-set>
 <20230610-unused-engaged-c1f4119cff08@spud>
Date:   Sun, 11 Jun 2023 01:18:28 +0200
Message-ID: <87jzwa29ff.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Conor Dooley <conor@kernel.org> writes:

> On Sat, Jun 10, 2023 at 07:51:35PM +0200, Javier Martinez Canillas wrote:
>> Conor Dooley <conor@kernel.org> writes:
>> 
>> > On Fri, Jun 09, 2023 at 07:09:37PM +0200, Javier Martinez Canillas wrote:
>> >> A default resolution in the ssd130x driver isn't set to an arbitrary 96x16
>> >> anymore. Instead is set to a width and height that's controller dependent.
>> >
>> > Did that change to the driver not break backwards compatibility with
>> > existing devicetrees that relied on the default values to get 96x16?
>> >
>> 
>> It would but I don't think it is an issue in pratice. Most users of these
>> panels use one of the multiple libraries on top of the spidev interface.
>> 
>> For the small userbase that don't, I believe that they will use the rpif
>> kernel and ssd1306-overlay.dtbo DTB overlay, which defaults to width=128
>> and height=64 [1]. So those users will have to explicitly set a width and
>> height for a 96x16 panel anyways.
>> 
>> The intersection of users that have a 96x16 panel, assumed that default
>> and consider the DTB a stable ABI, and only update their kernel but not
>> the  DTB should be very small IMO.
>
> It's the adding of new defaults that makes it a bit messier, since you
> can't even revert without potentially breaking a newer user. I'd be more
> inclined to require the properties, rather change their defaults in the
> binding, lest there are people relying on them.

I think that's OK, the old drivers/video/fbdev/ssd1307fb.c fbdev driver
still has the old behaviour so it will only be a problem for users that
want to move to the new ssd130x driver as well.

By looking at the git log history, the 96x16 resolution was chosen when
the driver was merged because Maxime tested it on a CFA10036 board [1]
that has a 96x16 panel that uses an SSD1307 controller.

But as mentioned, that chip can drive up to 128x39 pixels so the maximum
makes more sense as default to me.

[1]: https://www.crystalfontz.com/product/cfa10036

> If you and the other knowledgeable folk in the area really do know such
> users do not exist then I suppose it is fine to do.

I believe is fine, since as explained above that change was only done in
the ssd130x DRM driver, not the ssd1307fb fbdev driver whose default is
still 96x16. Both drivers share the same DT binding scheme, I was asked
to do that to make it as much backward compatible as possible with the
old fbdev driver.

But I will be OK to drop the "solomon,ssd130?fb-i2c" compatible strings
from the DRM driver and only match against the new "solomon,ssd130?-i2c"
compatible strings. And add a different DT binding schema for the ssd130x
driver, if that would mean being able to fix things like the one mentioned
in this patch.

In my opinion, trying to always make the drivers backward compatible with
old DTBs only makes the drivers code more complicated for unclear benefit.

Usually this just ends being code that is neither used nor tested. Because
in practice most people update the DTBs and kernels, instead of trying to
make the DTB a stable ABI like firmware.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

