Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE4E8788C20
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 17:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbjHYPHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 11:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbjHYPG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 11:06:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113532127
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:06:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7F5746447B
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7CE4C433D9
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692976013;
        bh=aoa9SpiddCCbsGDK0qCGqgLiVHR3F5V6H8tD8MlERUU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Dh9Rjb2jQ6r9j059Uwhxiyvezp14nS8dBy/H5yWlREyTNN7KQ+ntfosIe5OiCykJq
         eISMldF+hL7YP/25r26WrxX/OD9ORpm1cSzSKohd7EsCG6V7DFT6rw22PTleuknIuQ
         Jw1EH0opFqFMQoUiOn1z7ZMlC7dqDiMdBCq+t93lbVIIH1TAPz3KlzfSLZvsVOXwAY
         LdxJpNGIdgKAhlIjH/cj8zmv/heKhwNSLCVDXugvzxtnQJf31WiFMgYTSTtuTRc+3r
         iS3RgA1EGH4WB8IFyFzEtw7NntAD9yww9GK7Pp6sPZ0kWRhwjAf6P7k8rIWjdIupdA
         vf2DGmTBu0RLA==
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9a1de3417acso440273166b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:06:53 -0700 (PDT)
X-Gm-Message-State: AOJu0YykakBTQKouYP5XLTbUhPK2cCaL8RW+GJ6fmjKhVk45V5V2uazk
        aPYpQAO4FJTAyl5XP+h+baCwgOQCo6tcDc0v2Aw=
X-Google-Smtp-Source: AGHT+IHc5JSxCXE8m98hIvK2tbHhtu57wqYax7SbzVv3ZP3N3JD/do5wUMs7KyetdwRfQfANAMcuKXAB2a8CJkOY5vc=
X-Received: by 2002:a17:907:a410:b0:99b:af5a:fc2c with SMTP id
 sg16-20020a170907a41000b0099baf5afc2cmr20847771ejc.26.1692976012078; Fri, 25
 Aug 2023 08:06:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692783907.git.zhoubinbin@loongson.cn> <CAAhV-H7hi=yc=PfDBafXVS5CSwEeE2WmbAAhnnDm6iYFF3YzkQ@mail.gmail.com>
 <20230825-doubling-waltz-6444e26152db@wendy>
In-Reply-To: <20230825-doubling-waltz-6444e26152db@wendy>
From:   Huacai Chen <chenhuacai@kernel.org>
Date:   Fri, 25 Aug 2023 23:06:40 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7FAKa2_+rfyboVYxvQA0sJmaWnKj3yCJZkqe_FEx9J2Q@mail.gmail.com>
Message-ID: <CAAhV-H7FAKa2_+rfyboVYxvQA0sJmaWnKj3yCJZkqe_FEx9J2Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] LoongArch: Add built-in dtb support
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Conor,

On Fri, Aug 25, 2023 at 7:59=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Fri, Aug 25, 2023 at 07:38:31PM +0800, Huacai Chen wrote:
> > This series looks good enough to me now, if no one has objections, I
> > will queue it to loongarch-next.
>
> Have you not read Rob's replies?
I'm sorry, I have read but I thought Binbin's reply has answered Rob's ques=
tion.

Huacai
