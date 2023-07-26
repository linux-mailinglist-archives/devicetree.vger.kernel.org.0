Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CEA576415B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 23:44:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjGZVot (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 17:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjGZVos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 17:44:48 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24FC726A6
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 14:44:43 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99bc0da5684so24987166b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 14:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1690407881; x=1691012681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ps4Y9OIh64QaGnM5Te6Ppddpaq4isl4voyGBjXoQkq4=;
        b=oLKv0rZO719s3uuxEEJ3+7X0Y1QMDcHivjgC4Y42neVXMiMUNvFvgmamaSOB/pcx3K
         e2t63kbvdZxNYjYsHiwVCKdyJpmZBZUsxGjG5z35Mk5soX2twJp+kQ9vroKdMjJ43zKo
         3sbaXWFPLMrAz0li8SsuEhRPDMRp7+sAoS+n4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690407881; x=1691012681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ps4Y9OIh64QaGnM5Te6Ppddpaq4isl4voyGBjXoQkq4=;
        b=Vs2oOYQrTcfznNeCOj1mFRwXKC1r7Txsn52ROARb9Yvd3jwL5X4RTAkMXh/wkePr42
         PWFiPPZnL8q1LgfJaAAVlpqtWEv7r80XbTtSDfOQ4ZEr3+wA52PUqjBifEwvkN5Ra/kw
         4mPlwogxL/+SosGUJ7jEXfc08wJP3Ie0GfMdlIl/qLHRi+NaBxIwh0JdO+07U1mUS7/F
         KEf2j3lMEKZQR+gZPCyXkWg3SAkXW4qBDDcKKjB0lmIv4/DhHartGgZe5YLZgPtC5EoJ
         TEYSPOdgtIFauzkXanw0R9owUJZldXaXsQXyjrVhlAC+qWcq+DYZ47CGkqgsCPcfx9Ib
         nl2Q==
X-Gm-Message-State: ABy/qLaM3V3SSdulSotJWR6K65dMHxS/7w6Xi/Ic0yBD/QP/ZTPYI6Ca
        5gyn89GFj9Y7IfIYW1dHbCM9KszWxVEKMzP5O/uWpqe71Dsvj0s/4FBBQQ==
X-Google-Smtp-Source: APBJJlFecA/c317xfyvfoCEVxHUUkIXihg7HlwiqdSJLWcnWGv/lBMGQlN0nU1GjvquDPLeyaQ6NqZzSjb49u4WRwGM=
X-Received: by 2002:a17:906:3293:b0:99b:d075:18ba with SMTP id
 19-20020a170906329300b0099bd07518bamr263780ejw.56.1690407881054; Wed, 26 Jul
 2023 14:44:41 -0700 (PDT)
MIME-Version: 1.0
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 26 Jul 2023 15:44:30 -0600
Message-ID: <CAPnjgZ3d7CoAVBLQQ5JR6rC2ezzbCO_THvPGXLbuLQG2iMjYzA@mail.gmail.com>
Subject: Represented memory usage
To:     Devicetree Discuss <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

There is a note in the device tree spec:

"When booting via [UEFI], the system memory map is obtained via the
GetMemoryMap() UEFI boot time service as
defined in [UEFI] =C2=A7 7.2, and if present, the OS must ignore any /memor=
y nodes."

I can't recall (or never knew) the reason for this...does anyone know?

I am trying to work out how to represent the sort of memory mappings
maintained by UEFI boot-time services, within devicetree. As an
example, I'd like to indicate the memory used by the ACPI tables.

Should we:
1. Use the /memory node and add a property for usage (e.g. usage =3D "acpi"=
)
2. Use the /reserved-memory node and add a property for usage (e.g.
usage =3D "acpi")
3. Create a new /memory-usage node with its own binding

The problem with 1 is that it is mostly used for physical memory and
we don't want loads of entries in there

2 looks good if we can use 'compatible' for other things, e.g.
compatible =3D "acpi".

3 is an option, but it seems to duplicate 2?

If you have any ideas or guidance, please let me know.

Thanks,
Simon
