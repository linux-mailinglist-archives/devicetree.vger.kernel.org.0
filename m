Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56D5966A4B0
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 22:00:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjAMVAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 16:00:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjAMVAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 16:00:32 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 703A139C
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:00:31 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id fy8so54969309ejc.13
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2mmpxJR/11clC0MaB7ZXPSu/1j64Pnwk2uCRGEVoBno=;
        b=m6rl74oL5A4AvD0y3zerdLIVCjJWkAWMOyNBz80qhVpKCuYwcLVIZwgOe2bXdognSF
         rtGIUwq6qZ4HxWye4/PLlA/t4USk8ntVcfg3v4vB5WdCmOeqdO55rnHd714a8ZOE39ZW
         NUyI7LhZZwKzjFOlXUuSJHp/UfDkdW3KPVSOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mmpxJR/11clC0MaB7ZXPSu/1j64Pnwk2uCRGEVoBno=;
        b=FRXWuzCnB8FmmATZrfGOuKOZvr3JIVBx10zHkMytO7wjmrGxWFs7+wrRoZTADP6o4g
         jThJCVLY/lAkpaoLqDpHnZxn604Z6eViLt5thzETwuh7ZyvHnudInC2J1WlyebVdIhdX
         D53UQrvZYX+t1rWfofgbx+t+3BfJTe1dlXDCHruqjXFQruJvpvHMh8RW4rxTEVHt7Cqt
         PfHHVKqh/ZrwP24oYZivLONRnxpXskPw2q4/vxYrKOG3jHUYymEusA/YZHn9vGrs8qh6
         AB58Nex+I5JolPUxJYotaW2Ex6oG4g2N21A5pSgjx4rfLvQ5cHannbSCIhw/YBwIhsDW
         YXwA==
X-Gm-Message-State: AFqh2koiIrwwNIuLia98YI9C2k0Bktn20aoJBLNr+gEuFtTEVEHcyuX+
        gZGIvqPSAp7FrFlt9D6OKUWt3BlkuUZuqRIpd6b0qx/r0Pmcu+it
X-Google-Smtp-Source: AMrXdXtRIA7XiRTIGUPfP5kVi/X3KPNc5YcgJLuGB3MvDhbnPXVVMjjt1ceTQ5MtrtLFD4lgWWcBEgtvXF7HeoOJsLQ=
X-Received: by 2002:a17:906:2857:b0:82d:1b76:1e44 with SMTP id
 s23-20020a170906285700b0082d1b761e44mr6394805ejc.93.1673643629387; Fri, 13
 Jan 2023 13:00:29 -0800 (PST)
MIME-Version: 1.0
References: <20230113205518.206306-1-sjg@chromium.org> <20230113205518.206306-2-sjg@chromium.org>
In-Reply-To: <20230113205518.206306-2-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Fri, 13 Jan 2023 14:00:18 -0700
Message-ID: <CAPnjgZ2d==x1uLCRFJg44Us=UzyAGCst2LzTx=d=xyN+OQHVhw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] schemas: Add schema for U-Boot driver model 'phase tags'
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Fri, 13 Jan 2023 at 13:58, Simon Glass <sjg@chromium.org> wrote:
>
> U-Boot has some particular challenges with device tree and devices:
>
> - U-Boot has multiple build phases, such as a Secondary Program Loader
>   (SPL) phase which typically runs in a pre-SDRAM environment where code
>   and data space are limited. In particular, there may not be enough
>   space for the full device tree blob. U-Boot uses various automated
>   techniques to reduce the size from perhaps 40KB to 3KB. It is not
>   always possible to handle these tags entirely at build time, since
>   U-Boot proper must have the full device tree, even though we do not
>   want it to process all nodes until after relocation.
> - Some U-Boot phases needs to run before the clocks are properly set up,
>   where the CPU may be running very slowly. Therefore it is important to
>   bind only those devices which are actually needed in that phase
> - U-Boot uses lazy initialisation for its devices, with 'bind' and
>   'probe' being separate steps. Even if a device is bound, it is not
>   actually probed until it is used. This is necessary to keep the boot
>   time reasonable, e.g. to under a second

[..]

Unfortunately I still don't have the hang of this schema validation. I
would like to do this:

$ dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -m test.dtb
test.dtb: /some-device: failed to match any schema with compatible:
['vendor,soc1-ip']

but I don't get any errors when I manage test/bootphases.dts e.g. with
misnamed properties.

I thought I had this working, but that was back in November. What am I
doing wrong?

Regards,
Simon
