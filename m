Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEFFE773BD1
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 17:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230456AbjHHP4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 11:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjHHPyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 11:54:20 -0400
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 070BB59D5
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:43:32 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-52164adea19so7537447a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691509069; x=1692113869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lpIIx6e7ICQkx7yES38g8Qj/0uUmjub1LkUk8L7TfAs=;
        b=GsFlBHbZ7TxcdA2xSLpjAUrXag5ukwug2e2j4xmA/3g86vgJmRlfeTHZwj/uHqbZG9
         AIreKTTPvHEvv4rmt0ptTezIns/nZIBHG3y4Xl+gPQcEglLOVRV9VVKRYc5NA9lCAtp+
         6+1F9bNJ9YVQHdEMFDnvlK/0zYQRY+veuACuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509069; x=1692113869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lpIIx6e7ICQkx7yES38g8Qj/0uUmjub1LkUk8L7TfAs=;
        b=jYXyG4HHSz3W1QKG/84h4vO90/Ho+vujOOXMtmBbVYnL6DDD/+pEBMB+tJKU1aCI88
         jVPXaL2mTUtRo6S3q0//uCKQ34vlvo65UraMsBZ2mY8ObZL5u0nAo1WtFWP/BIBw8VSy
         TodSDTFPpIkNlgeJDrP/qV9Pj9MkAdW+UFdKbxRdFEo9fwpq7AXRl8qRn6urszt6h3Lr
         XJDn85c8P1mnWQQFHDUBHieaMan3DUp2PMEuMObPAmXUWj5jKJ+XmNG+RhWBts4Ykj8M
         J6r14p41jt+OXxsWkL3bJrNyemt/D1GCT+9Z7s1ZsZVHN0UGp7X4qqNLli0QdUuCB2k6
         J48g==
X-Gm-Message-State: AOJu0Yy63p6K7lHqItmmWuCD3t5YvyrdAPS9c47ZXAPRT3mNEjnYHAlV
        /StqSfqe3WzMtkBJUZsavgPL6ZkUrXyJZTKn2kMLiPsOceUE8noaxHo=
X-Google-Smtp-Source: AGHT+IF/D0/B5ra1QEXGrmyLgSyK5X28wHCCmXhrOuq5XB5YOo1lK7/d3KoH6ITMyKuusu2cCdhLqGlBxRf6Du7Dc2I=
X-Received: by 2002:a50:eb4c:0:b0:523:3631:876c with SMTP id
 z12-20020a50eb4c000000b005233631876cmr161029edp.18.1691509069408; Tue, 08 Aug
 2023 08:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAPnjgZ3d7CoAVBLQQ5JR6rC2ezzbCO_THvPGXLbuLQG2iMjYzA@mail.gmail.com>
In-Reply-To: <CAPnjgZ3d7CoAVBLQQ5JR6rC2ezzbCO_THvPGXLbuLQG2iMjYzA@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Tue, 8 Aug 2023 09:37:33 -0600
Message-ID: <CAPnjgZ2tFbJAvHdAkoy21opLWQrShVLALfb4icuZ71WqRsMa7w@mail.gmail.com>
Subject: Re: Represented memory usage
To:     Devicetree Discuss <devicetree@vger.kernel.org>,
        Lean Sheng Tan <sheng.tan@9elements.com>
Cc:     Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED,USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Lean Sheng Tan

On Wed, 26 Jul 2023 at 15:44, Simon Glass <sjg@chromium.org> wrote:
>
> Hi,
>
> There is a note in the device tree spec:
>
> "When booting via [UEFI], the system memory map is obtained via the
> GetMemoryMap() UEFI boot time service as
> defined in [UEFI] =C2=A7 7.2, and if present, the OS must ignore any /mem=
ory nodes."
>
> I can't recall (or never knew) the reason for this...does anyone know?
>
> I am trying to work out how to represent the sort of memory mappings
> maintained by UEFI boot-time services, within devicetree. As an
> example, I'd like to indicate the memory used by the ACPI tables.
>
> Should we:
> 1. Use the /memory node and add a property for usage (e.g. usage =3D "acp=
i")
> 2. Use the /reserved-memory node and add a property for usage (e.g.
> usage =3D "acpi")
> 3. Create a new /memory-usage node with its own binding
>
> The problem with 1 is that it is mostly used for physical memory and
> we don't want loads of entries in there
>
> 2 looks good if we can use 'compatible' for other things, e.g.
> compatible =3D "acpi".
>
> 3 is an option, but it seems to duplicate 2?
>
> If you have any ideas or guidance, please let me know.
>
> Thanks,
> Simon
