Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2536874FBDE
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 01:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjGKX2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 19:28:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229963AbjGKX2w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 19:28:52 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF657E74
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 16:28:50 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 9A4E4320091A;
        Tue, 11 Jul 2023 19:28:47 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute1.internal (MEProxy); Tue, 11 Jul 2023 19:28:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
        cc:cc:content-type:content-type:date:date:from:from:in-reply-to
        :in-reply-to:message-id:mime-version:references:reply-to:sender
        :subject:subject:to:to; s=fm2; t=1689118127; x=1689204527; bh=Qk
        480Cju6SmeRzg2rYBse8OkO4zCrxLYXJOc7D6RYwQ=; b=kxXb42NpaWW+cHvDk0
        9tDTG8Shzm2fI5EkJDP6lGSpgk2dnUvgvvP6AAADD1vzO2Oa1WaS2m8c4fOTnmF9
        fKTTW7w6tK+B16xL7DZVlZ4nwNXSz3x6mIdSVeOfu3SAnaXkJiXjfd6pWSQ/+4a6
        s+H3mRrvU3zFFjErvQsU3wm+cmcuyV/Zfv6XwfeaBlWt+OYl83EjSPf02xKmC12w
        aPWWDB5adz9HKuVgw/RIq9Zgeuh89pI9xtQJ/YvygUi8rVgyYr1c+a7qrjjVG2Bm
        6B0I91DsEBmyv3m8HjM9ZZrXO7JW6naGwZ0hN8LBvqcHouGxxpe6V6xQMzTylLnX
        DVJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; t=1689118127; x=1689204527; bh=Qk480Cju6SmeR
        zg2rYBse8OkO4zCrxLYXJOc7D6RYwQ=; b=EI7ilGADKvuMigj38QVEMWejEPjtq
        C9uXlKIqto+DlE8FDJzs/sI0026SCFORHz+08xJoEXdtJZb1Z6NddpMJBhHHe98S
        LRQGFN39OhYdSXcsLEfp4ISDw5MRX5Nctdh4yjGJ6af/6SE178eZ5eDH04trDvKn
        eTefXf4DMd3JqIGWERcxbdWt/esNcXvLeRMPOWOUfT91EoIcn9oUnh2xWONXCfHx
        QsvyoD2gsCxQGB6XJr/xllzVpwC9jGUJw9BLDc2uGkPAJNs5NLTQTkXMVqj1/pNA
        TiX3H3Cs+Cli/sBlx2ib9RmKY739FZPSsFvR29+BiW8Du25fqONmzrxlA==
X-ME-Sender: <xms:ruWtZDE6Ob68emoMsrV9SOfCzCv77dimOeK9UFuklPtRkHbfYGvksA>
    <xme:ruWtZAXpx9Pvj5HBcYocvwBJ512ZE8xsSR_UnFBYkwwHJqMzGSB3k7q1IeUIucd1b
    RoIO1fPz1yroSwy5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedugddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdfuthgv
    fhgrnhcuqfdktfgvrghrfdcuoehsohhrvggrrhesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeejueehgedtueetgefhheejjeeigffhieefjeehuddvueegtdfh
    heevgfeggfektdenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsohhrvggrrhesfhgr
    shhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:ruWtZFINdeVy2Tu7AFvjCQh5HLPtp41lNBD9P5BWs7DwZezURBZM2Q>
    <xmx:ruWtZBHESYX33_ZX2cdWtqo081vGLJZoYKxZL_WY_k5XX6aJnxSs2Q>
    <xmx:ruWtZJWFf8Dc8EXhuDLdDfLeKQr71vJdeqgJlhRWSwA8qPMWkI8zeA>
    <xmx:r-WtZIfgFADk3lWllqWaYK9UyBemtvNq-6lngyFHo7R8iuqu_QhZ6Q>
Feedback-ID: i84414492:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id DB8D0A60076; Tue, 11 Jul 2023 19:28:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-531-gfdfa13a06d-fm-20230703.001-gfdfa13a0
Mime-Version: 1.0
Message-Id: <33dd566f-adfc-4148-9bef-362935ddb606@app.fastmail.com>
In-Reply-To: <20230711225212.11542-1-palmer@rivosinc.com>
References: <20230711225212.11542-1-palmer@rivosinc.com>
Date:   Tue, 11 Jul 2023 19:28:25 -0400
From:   "Stefan O'Rear" <sorear@fastmail.com>
To:     "Palmer Dabbelt" <palmer@rivosinc.com>,
        "Conor Dooley" <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: RISC-V: Re-word the I extension binding
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 11, 2023, at 6:52 PM, Palmer Dabbelt wrote:
> I'd argue this changes the definition of the I binding, as there was
> more than just the counters that got split out (CSRs and fence.i at
> least).  We haven't released these bindings yet, so IIUC it's OK to
> change the definition still.
>
> I think this matches the original intent, or at least what the
> implementation does.
>
> Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
> Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml        | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml 
> b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index cc1f546fdbdc..31ec244bd32f 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -67,13 +67,11 @@ properties:
>        anyOf:
>          # single letter extensions, in canonical order
>          - const: i
> -          description: |
> -            The base integer instruction set, as ratified in the 
> 20191213
> -            version of the unprivileged ISA specification.
> -
> -            This does not include Chapter 10, "Counters", which was 
> moved into
> -            the Zicntr and Zihpm extensions after the ratification of 
> the
> -            20191213 version of the unprivileged specification.
> +          description:
> +            The base integer instruction set, as specified by the 2.2
> +            version of the unprivileged ISA specification, formally 
> known as
> +            the user-level ISA.  This definition of I includes various
> +            extensions that were later split out.

Nitpick: the 2.2 unprivileged ISA uses the pre-ratification memory model
(essentially Alpha), which is much weaker than the memory model in 20191213.

-s

> 
>          - const: m
>            description:
> -- 
> 2.40.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
