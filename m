Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8278A7865C9
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 05:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjHXDU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 23:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239587AbjHXDUt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 23:20:49 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B6610EC
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 20:20:47 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-58caaedb20bso68436077b3.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 20:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692847246; x=1693452046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQa2QhUuD1nt00Z88tzVThPmcU90ZyELmtPGdBb+ofw=;
        b=Jwi4DWLdYpf6QREC1mr/nfaVh0UZQxqaJtHDL0yr8MDBvId8qT0kltDJBw0ZZxoV8F
         ScDdKfzRrf0bzZGSnyJN2JE73B6M8JTb7Gu1ax+7glvmS2vPJ6IH46kr5AmLr//+bPUQ
         zjNzTgr9MwscAswfXBsjBPqjpGSRDlxzAIuxLA+7/JFO/szgUkHDo9BvQ3tgQmBJwfl0
         0UQEYkvV8nH0TswkGX+zSVHXqcAYklPJdonmbSAoiZshJxPpMdd7jOLK4ei3wPc2EU8E
         zQMNUY0+seupupTYFCB3PthZ6UKD6qsdoGLFzXTDNf1iPmTW2sBk9NZfY5JZwSZiVKUe
         qGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692847246; x=1693452046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQa2QhUuD1nt00Z88tzVThPmcU90ZyELmtPGdBb+ofw=;
        b=YuS72X1v/+Qsdok36zqmVf6v1qX9zT680O3cJDUTrj6GfIC56BkAEHd1ZKOwct5HQ2
         PlH1rV4SwmhWtiCU/RF9SEzu3k/tAVXGSUy4lE/8lQR3OiBz587QMCS0GTLQj7dKsQhM
         zEB0xLTfX8h4Z+Oe86y4jnAfhTvJ8e82MFXFb2z81ek4BRC0+dGPqlhTUNZR63vBkgGE
         E2ryWyONdwsQ0Y3Hb15YucyA/fa0uueH0xbAfrMVK3cYlcUj1D6jVGBP+Fkz3KkiBdS1
         qzWpV3t+Zm0/3z6W1N6k12XoADsA1lrzh5D2tGlbcfJpTQ5+gUMxBINAg1cSy77WWC9X
         GeTg==
X-Gm-Message-State: AOJu0Yxnls09LlyE2Ap9XLqhH0RxIz+TiVBw9TTOMrLrSBxSD8pwt2KV
        LMBGiQMU2TmSmrqANs3yAU0KGZ7ZP0b7JqP/y4M=
X-Google-Smtp-Source: AGHT+IE08VXGpVtLDyG9MzPycaJeRexFCX1l1s8wa02GvSyqesRN9pe1dvaVQORBLjPPPlb+uFnirEm1bfrgpDh+YiU=
X-Received: by 2002:a81:6ed6:0:b0:589:8b56:15f with SMTP id
 j205-20020a816ed6000000b005898b56015fmr15027491ywc.24.1692847246639; Wed, 23
 Aug 2023 20:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692783907.git.zhoubinbin@loongson.cn> <3e69929008c8190cff331941dd4d34f748e5e44a.1692783907.git.zhoubinbin@loongson.cn>
 <20230823194250.GA2768550-robh@kernel.org>
In-Reply-To: <20230823194250.GA2768550-robh@kernel.org>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Thu, 24 Aug 2023 11:20:34 +0800
Message-ID: <CAMpQs4KQzXYDsMJesGGRVX=e_psyiik-Th2Y0CV=keU+-v86mQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] LoongArch: Allow device trees to be built into the kernel
To:     Rob Herring <robh@kernel.org>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob:

On Thu, Aug 24, 2023 at 3:42=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Aug 23, 2023 at 05:54:51PM +0800, Binbin Zhou wrote:
> > Some systems do not provide a useful device tree to the kernel at boot
> > time. Let's keep a device tree table in the kernel, keyed by the dts
> > filename, containing the relevant DTBs.
>
> Support for this in other arches was added to support legacy bootloaders
> with no DT support. You should not need this for a new architecture. Fix
> the bootloader to provide a useful DT.
>
Yes, our bootloader already supports DT.

Our original intention of providing kernel built-in DTS is to describe
all possible device information of that SoC, so that everyone can use
it as a reference during development; we will unlikely to add more
.dts files to the kernel besides the reference ones.

And as a reference, our built-in DTS provides the most basic bootable
combinations (so it is generic enough) as an alternative in case the
DTS in the bootloader is unexpected.

Does this make any sense?

Thanks.
Binbin

> Rob
