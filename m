Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 355E754D1AB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 21:34:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346751AbiFOTd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 15:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346644AbiFOTd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 15:33:58 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A1C728726
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 12:33:57 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id h23so25173461ejj.12
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 12:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AEZOv5m0Rx+t87hNL6kWkwdNtHvrPkWP2pe9XzKr+PE=;
        b=a6SmuEHD2c6q5TLi/hWEqpJNuSQTbu+TzJoYB2+/fKlknKhcKH2+b1WJ/qCHL4mZeT
         CVYQRM83oSTUBCSaWBCwVGrmVgd4CwZECwmnmbzFmdtDcldriKOM4/wHWfqlO8RdBxvb
         4g53vav7IRj124yshSjsmeCU5uWh/m0DNUYUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AEZOv5m0Rx+t87hNL6kWkwdNtHvrPkWP2pe9XzKr+PE=;
        b=cp9P0a5AjvuvDSbX0Kw220jGHc70uUi2kddsCNa+hBPPtX19RwBUPGXi+OV4lrz9O9
         Yo4Kiaan5nrVtz+Wu7I3SZP9FGBvrehNF1r4ObZt2rOve9mCKmxJ82GxlaFOmNEN687y
         9YaVxuyapuNzGdPU7rXnYH9WvCnFRy4s280ZF5YUd85S31swpMml4u8+jNSTnItacbr1
         uGEbTrxOHsQKorjM8jPoVTnfPE+PrqpCI22/P39oBeHKmlX60A2y/jMaULzWmOUu+F+e
         CAWsDNleOg0n1NgpTPLMqVUbgBN6iG1Noq0oouBaUqYBs5Vcx1Ex26/+3+4USR/bM/2U
         XquA==
X-Gm-Message-State: AJIora+8gfqrpzTO4XGWbsVbgrilbLuASESIYtDtDaOXwcwvCK9WQxd3
        WqkbO45iizbv16ezL8F7dGJsiPFv9DU00kfxXlk=
X-Google-Smtp-Source: AGRyM1ucL3IoMECLGEN0qLmEqY1HrRTpaB9KEUeUsIXPT816cgWKRAgnH5IzvmsOaEAsvnJM3NK9xA==
X-Received: by 2002:a17:906:52c7:b0:6ce:a880:50a3 with SMTP id w7-20020a17090652c700b006cea88050a3mr1219747ejn.437.1655321635018;
        Wed, 15 Jun 2022 12:33:55 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id a12-20020a50858c000000b0042617ba638esm39307edh.24.2022.06.15.12.33.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 12:33:54 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id v14so16687314wra.5
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 12:33:53 -0700 (PDT)
X-Received: by 2002:a5d:68d2:0:b0:210:31cc:64a6 with SMTP id
 p18-20020a5d68d2000000b0021031cc64a6mr1273127wrw.679.1655321633255; Wed, 15
 Jun 2022 12:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAODwPW9E8wWwxbYKyf4_-JFb4F-JSmLR3qOF_iudjX0f9ndF0A@mail.gmail.com>
 <CAODwPW8fiFSNehZbZDdR9kjHxohLGiyE7edU=Opy0xV_P8JbEQ@mail.gmail.com>
In-Reply-To: <CAODwPW8fiFSNehZbZDdR9kjHxohLGiyE7edU=Opy0xV_P8JbEQ@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 Jun 2022 12:33:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XAYUx9OKLxThQxYr02ZE+7Rjw0VnSsxg7kfPCBG38FZw@mail.gmail.com>
Message-ID: <CAD=FV=XAYUx9OKLxThQxYr02ZE+7Rjw0VnSsxg7kfPCBG38FZw@mail.gmail.com>
Subject: Re: [RFC] Correct memory layout reporting for "jedec,lpddr2" and
 related bindings
To:     Julius Werner <jwerner@chromium.org>
Cc:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Jian-Jia Su <jjsu@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Nikola Milosavljevic <mnidza@outlook.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 14, 2022 at 7:28 PM Julius Werner <jwerner@chromium.org> wrote:
>
> Sorry, wrong email for Krzysztof.
>
> On Tue, Jun 14, 2022 at 7:25 PM Julius Werner <jwerner@chromium.org> wrote:
> >
> > We (Chromium OS) have been trying to find a way to pass LPDDR memory
> > chip information that is available to the firmware through the FDT
> > (mostly for userspace informational purposes, for now). We have been
> > using and expanding the existing "jedec,lpddr2" and "jedec,lpddr3"
> > bindings for this (e.g. [1]). The goal is to be able to identify the
> > memory layout of the system (how the parts look like, how they're tied
> > together, how much capacity there is in total) as accurately as
> > possible from software-probed values.
> >
> > The existing bindings contain the fields "io-width" and "density",
> > which is terminology directly matching what an LPDDR chip can report
> > to firmware through the "Mode Register" interface, specifically MR8.
> > (The LPDDR specs describing this are not public, but you can see the
> > register definitions in most LPDDR chip datasheets that can be
> > randomly found online, e.g. [2] page 37.) The code in
> > drivers/memory/of_memory.c also suggests that these are supposed to
> > directly correspond to the MR8 values read from the chip, since when
> > of_lpddr2_get_info() copies the device tree values into struct
> > lpddr2_info, it encodes them in a format that directly matches the
> > mode register bit field patterns.
> >
> > The problem with this is that each individual LPDDR chip has its own
> > set of mode registers (per rank) that only describe the density of
> > that particular chip (rank). The host memory controller may have
> > multiple channels (each of which is basically an entirely separate set
> > of physical LPDDR pins on the board), a single channel may be
> > connected to multiple LPDDR chips (e.g. if the memory controller has
> > an outgoing 32-bit channel, that channel could be tied to two 16-bit
> > LPDDR chips by tying the low 16 bits to one and the high 16 bits to
> > the other), and then each of those chips may offer multiple
> > independent ranks (which rank is being accessed at a given time is
> > controlled by a separate chip select pin).
> >
> > So if we just have one "io-width" and one "density" field in the FDT,
> > there's no way to figure out how much memory there's actually
> > connected in total, because that only describes a single LPDDR chip.
> > Worse, there may be chips where different ranks have different
> > densities (e.g. a 6GB dual-rank chip with one 4GB and one 2GB rank),
> > and different channels could theoretically be connected to chips of
> > completely different manufacturers.
> >
> > We need to be able to report the information that's currently encoded
> > in the "jedec,lpddr2" binding separately for each channel+rank
> > combination, and we need to be able to tell how many LPDDR chips are
> > combined under a single memory channel. For the former, I'd suggest
> > creating a separate FDT node for each channel, and then creating
> > subnodes under those for each rank that implement the binding. For the
> > latter, I would suggest adding a new property "channel-io-width" which
> > describes the width of the channel from the host memory controller's
> > point of view, so that you can divide that property by the already
> > existing "io-width" property to figure out how many parts are tied
> > together in series in a single channel. The final layout, then, would
> > look something like this:
> >
> > lpddr2-channel0 {
> >     rank0 {
> >         compatible = "jedec,lpddr2";
> >         density = <2048>;
> >         channel-io-width = <32>;
> >         io-width = <16>;
> >     };
> >     rank1 {
> >         compatible = "jedec,lpddr2";
> >         density = <1024>;
> >         channel-io-width = <32>;
> >         io-width = <16>;
> >     };
> > };

Two comments about the above:

1. It seems like the top-level node should have a compatible of some
type. Without that I guess you're just relying on people to find it
based on the name of the node?

2. Why not put the `channel-io-width` property in the channel? Then
you don't need to repeat it for each rank that's under the channel?

If you do that then I think you're actually not making _any_
modifications to the existing lpddr2 bindings, right? You're just
adding a new top-level node that would include the memory nodes under
it.


Although maybe some extra things you might want to add that would
affect the nodes in it:

1. In the above the two ranks are in series, right? ...with a chip
select to select rank0 vs rank1? From how SPI works I'd expect that to
be represented using "reg", AKA:

lpddr2-channel0 {
    compatible = "jdec,lpddr2-channel";
    #address-cells = <1>;
    #size-cells = <0>;
    channel-io-width = <32>;

    rank@0 {
        reg = <0>;
        compatible = "jedec,lpddr2";
        density = <2048>;
        io-width = <16>;
    };
    rank@1 {
        reg = <1>;
        compatible = "jedec,lpddr2";
        density = <1024>;
        io-width = <16>;
    };
};

2. I guess if you had two things in parallel you'd want to know how?
Maybe if you had 4 8-bit chips connected to a 32-bit channel maybe
it'd look like this:

lpddr2-channel0 {
    compatible = "jdec,lpddr2-channel";
    #address-cells = <2>;
    #size-cells = <0>;
    channel-io-width = <32>;

    rank@0,0 {
        reg = <0 0>;
        compatible = "jedec,lpddr2";
        density = <2048>;
        io-width = <8>;
    };
    rank@0,7 {
        reg = <0 7>;
        compatible = "jedec,lpddr2";
        density = <2048>;
        io-width = <8>;
    };
    rank@0,15 {
        reg = <0 15>;
        compatible = "jedec,lpddr2";
        density = <2048>;
        io-width = <8>;
    };
    rank@0,23 {
        reg = <0 23>;
        compatible = "jedec,lpddr2";
        density = <2048>;
        io-width = <8>;
    };
};

...and I guess you could have things that include serial and parallel hookups...


> > lpddr2-channel0 {

nit that you define "channel0" twice in your example.


> >     rank0 {
> >         compatible = "jedec,lpddr2";
> >         density = <2048>;
> >         channel-io-width = <32>;
> >         io-width = <16>;
> >     };
> >     rank1 {
> >         compatible = "jedec,lpddr2";
> >         density = <1024>;
> >         channel-io-width = <32>;
> >         io-width = <16>;
> >     };
> > };
> >
> > This would be describing a dual-channel, dual-rank layout where each
> > 32-bit channel is connected to two 16-bit LPDDR chips in series. The
> > total capacity would be (2048 Mbits * (32/16) chips + 1024 Mbits *
> > (32/16) chips) * 2 channels = 12Gbits.

Just to make sure I'm understanding things: in your hypothetical
example we're effectively wasting half of the SDRAM bandwidth of the
controller, right? So while what you describe is legal you'd get a
much more performant system by hooking the two big chips in parallel
on one channel and the two small chips in parallel on the other
channel. That would effectively give you a 64-bit wide bus as opposed
to the 32-bit wide bus that you describe.


> > Does this seem reasonable? If nobody has any objections, I can draft
> > up a real patch to change the respective bindings. (The two existing
> > uses in platform device trees would stay how they are until the
> > respective platform maintainers choose to update them, since only they
> > would know the exact configuration. They wouldn't technically violate
> > the changed binding since they still contain the same properties
> > (other than "channel-io-width" which could be declared optional), but
> > they wouldn't represent the total memory layout.)
> >
> > (Also, btw, would it make sense to use this opportunity to combine the
> > "jedec,lpddr2" and "jedec,lpddr3" bindings into a single document?
> > They contain all the same properties and I think it makes sense to
> > keep them in sync, so duplicating the documentation is just
> > unnecessary maintenance overhead. I would also like to add a
> > "jedec,lpddr4" binding that has the same properties.)

I'm happy to let others chime in, but one way to do this would be to
put the super common properties (density, width, etc) in a common file
and have it "included" by everyone else. See
`bindings/spi/spi-controller.yaml` and then see how all the SPI
controllers "reference" that.

Once you have that you could create a "jedec,lpddr4" bindings that at
least contained the common bits even if it didn't contain all the
LPDDR4-specific details and later someone could add in all those extra
details.


> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> > [2] https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/dram/mobile-dram/low-power-dram/lpddr2/2gb_automotive_lpddr2_u89n.pdf
