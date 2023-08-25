Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA987788C5A
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 17:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234735AbjHYPUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 11:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240597AbjHYPT6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 11:19:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFA77212C
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:19:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7F0A465283
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:19:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6A64C433CA
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692976794;
        bh=4IIMN3b2kTYVIvu/5e5trpnBMJWv+uT58S9QzRv0bAU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=R7c1cryVSOxME9/BeSMQ9zIFCAkOeTfE+s2H3EgFxg3B594m0xJLnN5VlR9p+Phm8
         3sPCHGZ4vMc9nniIpjfhFg6Q1mW4lRBhofErsCEW/TYgtA6H8/r8PKcl5QEsIbvs9+
         Xjod8eQKyBCa4fqaLE4yQo2sPP7WPCnYgN1UdqLrKNIFSJsLHK3TbKUY+5PiyEwGi9
         d2xRZeRBAAlT7YSOClf/aZFgVDyvwNcVwaXIGZ4wrJUUffjP3l22fXQjniQB5okogQ
         0k93wHMH6qGeUYO7GuHqCUbubkqtPuK/y/cuWQ9Y7rGzDlcw4LgkSKNHh6n4xiOzvb
         9SoXzgAP3MpNw==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-525bd0b2b48so1492579a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:19:54 -0700 (PDT)
X-Gm-Message-State: AOJu0YxtErW5+XYqiw90QPqJkUlsdpe+myUGnzJ5FkPBrCcad5jkjnBO
        BAtq+UvjkXI0N9DlgbJ2N/Ay+aNSUNBSFTxG3F0=
X-Google-Smtp-Source: AGHT+IEMI0O5voiMBdZeSfNdo1xEa2uTWFdFqG6MIazk/Jy3gtA8gmZPT/r4C5DSsfX0sUeycQbjleULnsMw16rUPOg=
X-Received: by 2002:a17:906:5198:b0:9a1:b967:aca8 with SMTP id
 y24-20020a170906519800b009a1b967aca8mr8301421ejk.4.1692976793122; Fri, 25 Aug
 2023 08:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692783907.git.zhoubinbin@loongson.cn> <CAAhV-H7hi=yc=PfDBafXVS5CSwEeE2WmbAAhnnDm6iYFF3YzkQ@mail.gmail.com>
 <20230825-doubling-waltz-6444e26152db@wendy> <CAAhV-H7FAKa2_+rfyboVYxvQA0sJmaWnKj3yCJZkqe_FEx9J2Q@mail.gmail.com>
 <20230825-exorcist-periscope-045ad906d919@spud>
In-Reply-To: <20230825-exorcist-periscope-045ad906d919@spud>
From:   Huacai Chen <chenhuacai@kernel.org>
Date:   Fri, 25 Aug 2023 23:19:42 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7LMYn2u8f1waTpWn8pS1jJC1BNVWzq5zw8vE+uecx+aQ@mail.gmail.com>
Message-ID: <CAAhV-H7LMYn2u8f1waTpWn8pS1jJC1BNVWzq5zw8vE+uecx+aQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] LoongArch: Add built-in dtb support
To:     Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Binbin Zhou <zhoubinbin@loongson.cn>,
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

On Fri, Aug 25, 2023 at 11:08=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Fri, Aug 25, 2023 at 11:06:40PM +0800, Huacai Chen wrote:
> > Hi, Conor,
> >
> > On Fri, Aug 25, 2023 at 7:59=E2=80=AFPM Conor Dooley <conor.dooley@micr=
ochip.com> wrote:
> > >
> > > On Fri, Aug 25, 2023 at 07:38:31PM +0800, Huacai Chen wrote:
> > > > This series looks good enough to me now, if no one has objections, =
I
> > > > will queue it to loongarch-next.
> > >
> > > Have you not read Rob's replies?
> > I'm sorry, I have read but I thought Binbin's reply has answered Rob's =
question.
>
> As far as I can tell, it didn't - but there were was a reply from Rob
> about dtbs_check issues too IIRC.
OK, I see. The dtbs_check warning is being fixed in [1], but it seems
that Binbin hasn't got the key point of Krzysztof.

https://lore.kernel.org/linux-mips/d11873a1-b552-71f5-1100-7464687f8bb4@lin=
aro.org/T/#t

Huacai
