Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0B7A65C06D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 14:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237614AbjACNFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 08:05:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230052AbjACNFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 08:05:46 -0500
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4DCA10B47
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 05:05:41 -0800 (PST)
Received: by mail-ua1-x92f.google.com with SMTP id e7so813658ual.4
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 05:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qBoUROWjuf5ZUYCNjG/g+PT7H00JAGubfmWIHqWiFno=;
        b=LG3dcwLKf5tAGbI5rt2aIWy2XkdGAxgvDX2u5W/cT0Rlwxk26JkI53ckg0EjFBfTKU
         eAZhu4Pj1OMx0WJlfThaU2UnC0+rke06pkTwZcGduzSbZf3xH+hqKVVFUTiobql5eAWf
         7OMyMi0B3paezljyGecRMQLwxYlUfRQtXlpX99OldXISEccoys1Twr9A6ukSf/WFPPOE
         34oc6+7wrCSUZbFEheBkjjabWGNxkLp8f/o7dLjWpHbXi8O1eDHEmjjGiSJCUakYXrwZ
         Wih1WTikjtgPpkPZWZtqPX75mAcnAV2bopj7xZ8cqgencYHUBQ0aIR15CKzagVD3c/Bt
         md5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qBoUROWjuf5ZUYCNjG/g+PT7H00JAGubfmWIHqWiFno=;
        b=tbVxhnfDcyIjr8PhZSxWcJt2VTyo2FAkEWQUDLZ1bUvziWc1IRG5jKv69FcBucQbJz
         o5Bt6dJBN67rgeoWq1SfKKXXgwfoUBlIv0iFIjAhgvsM6Z+hVLNJYHQQKX3y0NeQ4N61
         X/9naCB6ddA3rIrD6HsMhTWed2PE03mfyqnNv4mxwJl2OEPfUu9kdiN6C8e/NCnzAsrl
         bQzBJHENNKO6QE0Vh5XyTQh6N3lSqlgenQ1oT9QV6La/dJ9Mpi8z4F6zcZTcFYJkla4D
         RL7qupAzAs7VNAUaHLL6dlz7DMTbLS60ypfZC257qwpBLiOmnt7c2XbHT2LOTLozWcSt
         LyYg==
X-Gm-Message-State: AFqh2krZ/ZelpKPwaqxxCxDpbwL3beOuEhwW0NVHo5R7Jjz21vZgsC70
        Y5fRf4U2wRk2NByLlYeE88cSub3QMUCLgoXJ1gEg3A==
X-Google-Smtp-Source: AMrXdXsabU1gefvs88vYs+DmLmfV8mbDiegq1CGFp4srFkNfmOlOQsYh7UqXWCshayJ3xlbOoVtJxKRC/g/O0jtAdJ0=
X-Received: by 2002:ab0:64ca:0:b0:478:b785:affb with SMTP id
 j10-20020ab064ca000000b00478b785affbmr3920179uaq.52.1672751140736; Tue, 03
 Jan 2023 05:05:40 -0800 (PST)
MIME-Version: 1.0
References: <20221111044207.1478350-1-apatel@ventanamicro.com>
 <20221111044207.1478350-7-apatel@ventanamicro.com> <Y3EQ4JU7uGbIMGiW@spud>
 <CAAhSdy2UAMmX+W5Cm3DuTJzZ0jJ3=CW4PhjctQNdfeS+4hqWqg@mail.gmail.com> <082eb006-75b8-dead-c014-9ba41a697e50@linaro.org>
In-Reply-To: <082eb006-75b8-dead-c014-9ba41a697e50@linaro.org>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Tue, 3 Jan 2023 18:35:28 +0530
Message-ID: <CAK9=C2XnYVtEPqPoLw=+n6Ys_jm8Ndx7fDScDAOM4iNMEj-H0g@mail.gmail.com>
Subject: Re: [PATCH 6/9] dt-bindings: Add RISC-V advanced PLIC bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Anup Patel <anup@brainfault.org>, Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 3, 2023 at 2:29 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 02/01/2023 17:50, Anup Patel wrote:
> > On Sun, Nov 13, 2022 at 9:14 PM Conor Dooley <conor@kernel.org> wrote:
> >>
> >> Hey Anup,
> >>
> >> Ditto the $subject nit here.
> >
> > Adding "interrupt-controller:" to subject makes it longer than 80 characters.
>
> Because you added redundant double "bindings". Subject line is precious,
> so do not add useless words.

Okay, I will update the patch subject based on your suggestion.

Regards,
Anup
