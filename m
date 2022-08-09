Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62D6F58E360
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 00:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiHIWnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 18:43:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbiHIWmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 18:42:42 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D532665674
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 15:42:40 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id t22-20020a17090a449600b001f617f2bf3eso2307802pjg.0
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 15:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=mQ14sX2XFsAXg89NH628DE64fAUr3+VPWMSqt6TLKxQ=;
        b=pr+J8/3zgxApWYX3nnzccVmYmlhr2HbItqs2CSC9ZVGcBLZEvAXpwPuHJr+ig8JT/z
         d+K73VSAQmYzoKyBqCi+yQ9eOMvl9jG2E5UVcpRq6l0pK27TxkCPHwICG6FW2ldbwb0R
         TZDNYZk/v89kzQ0QKWxgVn/VQlmUjjHQSQ9Yt9ukboJ6k9guni9DttJaqF0G6QHj66Hv
         eGnwxejEki99gOD7dw8ncn3xy7zDkAFQjqE2DspcdCdgoQsYmtceZAcfVDe20ldbULcL
         Aarmb5qpiBKOavrSJJ3yeJkoGQWFqV2jln4Hbd16i6eIEfjKdtXkJJtCkJhPfq2QXKXG
         tIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=mQ14sX2XFsAXg89NH628DE64fAUr3+VPWMSqt6TLKxQ=;
        b=og1obSpf3xHKfc5kuj44cvE8K0a4N+hvfLOFBzWO2NuD3ZrxtYZJ7hP8EEzd8TWNJI
         YDOQVIQ8nIfWuYquFob5Irs596oNYX5JDuLh1fUzP/utRMxf7iAquQAGhpZO25OKULXC
         g3MfcgjXEHWRHkO3oRFKva4sv744Qa51Nxo1fTgDc5b1vkiSJQgi+srqfy0Tw6D6hfOO
         sIT+XGVesTpOtCwWLYsZ8v7SYih4RdZR5yrgurabSeaMgs7ubyHmQZG7eaKShOzBXGQe
         /8erih9slmP7x4vBSRf20OvOe6FN1aHkees/3VRg1BY7+7IuldGxalmvws0qvLev0Lf5
         kLtg==
X-Gm-Message-State: ACgBeo2vTJZj4edjrqkIhsUVy+hhzxSJUe12Q37RqNtD3WHvY9oM3Fdt
        fIPbRXWxMWH58iDIEnwWpCo5uWstWbAm/dS502rmKA==
X-Google-Smtp-Source: AA6agR4BBawB+/QbD8b7RqWvHNfY9hKaQQGJdMBGdfDYTqHO+VR55imBCzN3hQTdkNsApmG+YTqWLLdotBpBBs6P/qo=
X-Received: by 2002:a17:902:694c:b0:16d:cc5a:8485 with SMTP id
 k12-20020a170902694c00b0016dcc5a8485mr25270795plt.90.1660084960290; Tue, 09
 Aug 2022 15:42:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+vNU05_xH4b8DFVJLpiDTkJ_z9MrBFvf1gSz9P1KXy9POU7w@mail.gmail.com>
 <5914cae0-e87b-fb94-85dd-33311fc84c52@seco.com> <20220808210945.GP17705@kitsune.suse.cz>
 <20220808143835.41b38971@hermes.local> <20220808214522.GQ17705@kitsune.suse.cz>
 <53f91ad4-a0d1-e223-a173-d2f59524e286@seco.com> <20220809213146.m6a3kfex673pjtgq@pali>
 <b1b33912-8898-f42d-5f30-0ca050fccf9a@seco.com> <20220809214207.bd4o7yzloi4npzf7@pali>
 <2083d6d6-eecf-d651-6f4f-87769cd3d60d@seco.com>
In-Reply-To: <2083d6d6-eecf-d651-6f4f-87769cd3d60d@seco.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 9 Aug 2022 15:42:27 -0700
Message-ID: <CAJ+vNU1kBUHMZpVPXjiXogB0N+PyixQWP84bxR277FDVj+iyVg@mail.gmail.com>
Subject: Re: ethernet<n> dt aliases implications in U-Boot and Linux
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>,
        Stephen Hemminger <stephen@networkplumber.org>,
        netdev <netdev@vger.kernel.org>, u-boot <u-boot@lists.denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 9, 2022 at 3:41 PM Sean Anderson <sean.anderson@seco.com> wrote=
:
>
>
>
> On 8/9/22 5:42 PM, Pali Roh=C3=A1r wrote:
> > On Tuesday 09 August 2022 17:36:52 Sean Anderson wrote:
> >> On 8/9/22 5:31 PM, Pali Roh=C3=A1r wrote:
> >> > On Tuesday 09 August 2022 16:48:23 Sean Anderson wrote:
> >> >> On 8/8/22 5:45 PM, Michal Such=C3=A1nek wrote:
> >> >> > On Mon, Aug 08, 2022 at 02:38:35PM -0700, Stephen Hemminger wrote=
:
> >> >> >> On Mon, 8 Aug 2022 23:09:45 +0200
> >> >> >> Michal Such=C3=A1nek <msuchanek@suse.de> wrote:
> >> >> >>
> >> >> >> > On Mon, Aug 08, 2022 at 03:57:55PM -0400, Sean Anderson wrote:
> >> >> >> > > Hi Tim,
> >> >> >> > >
> >> >> >> > > On 8/8/22 3:18 PM, Tim Harvey wrote:
> >> >> >> > > > Greetings,
> >> >> >> > > >
> >> >> >> > > > I'm trying to understand if there is any implication of 'e=
thernet<n>'
> >> >> >> > > > aliases in Linux such as:
> >> >> >> > > >         aliases {
> >> >> >> > > >                 ethernet0 =3D &eqos;
> >> >> >> > > >                 ethernet1 =3D &fec;
> >> >> >> > > >                 ethernet2 =3D &lan1;
> >> >> >> > > >                 ethernet3 =3D &lan2;
> >> >> >> > > >                 ethernet4 =3D &lan3;
> >> >> >> > > >                 ethernet5 =3D &lan4;
> >> >> >> > > >                 ethernet6 =3D &lan5;
> >> >> >> > > >         };
> >> >> >> > > >
> >> >> >> > > > I know U-Boot boards that use device-tree will use these a=
liases to
> >> >> >> > > > name the devices in U-Boot such that the device with alias=
 'ethernet0'
> >> >> >> > > > becomes eth0 and alias 'ethernet1' becomes eth1 but for Li=
nux it
> >> >> >> > > > appears that the naming of network devices that are embedd=
ed (ie SoC)
> >> >> >> > > > vs enumerated (ie pci/usb) are always based on device regi=
stration
> >> >> >> > > > order which for static drivers depends on Makefile linking=
 order and
> >> >> >> > > > has nothing to do with device-tree.
> >> >> >> > > >
> >> >> >> > > > Is there currently any way to control network device namin=
g in Linux
> >> >> >> > > > other than udev?
> >> >> >> > >
> >> >> >> > > You can also use systemd-networkd et al. (but that is the sa=
me kind of mechanism)
> >> >> >> > >
> >> >> >> > > > Does Linux use the ethernet<n> aliases for anything at all=
?
> >> >> >> > >
> >> >> >> > > No :l
> >> >> >> >
> >> >> >> > Maybe it's a great opportunity for porting biosdevname to DT b=
ased
> >> >> >> > platforms ;-)
> >> >> >>
> >> >> >> Sorry, biosdevname was wrong way to do things.
> >> >> >> Did you look at the internals, it was dumpster diving as root in=
to BIOS.
> >> >> >
> >> >> > When it's BIOS what defines the names then you have to read them =
from
> >> >> > the BIOS. Recently it was updated to use some sysfs file or whatv=
er.
> >> >> > It's not like you would use any of that code with DT, anyway.
> >> >> >
> >> >> >> Systemd-networkd does things in much more supportable manner usi=
ng existing
> >> >> >> sysfs API's.
> >> >> >
> >> >> > Which is a dumpster of systemd code, no thanks.
> >> >> >
> >> >> > I want my device naming independent of the init system, especiall=
y if
> >> >> > it's systemd.
> >> >>
> >> >> Well, there's always nameif...
> >> >>
> >> >> That said, I have made [1] for people using systemd-networkd.
> >> >>
> >> >> --Sean
> >> >>
> >> >> [1] https://github.com/systemd/systemd/pull/24265
> >> >
> >> > Hello!
> >> >
> >> > In some cases "label" DT property can be used also as interface name=
.
> >> > For example this property is already used by DSA kernel driver.
> >> >
> >> > I created very simple script which renames all interfaces in system =
to
> >> > their "label" DT property (if there is any defined).
> >> >
> >> > #!/bin/sh
> >> > for iface in `ls /sys/class/net/`; do
> >> >    for of_node in of_node device/of_node; do
> >> >            if test -e /sys/class/net/$iface/$of_node/; then
> >> >                    label=3D`cat /sys/class/net/$iface/$of_node/label=
 2>/dev/null`
> >> >                    if test -n "$label" && test "$label" !=3D "$iface=
"; then
> >> >                            echo "Renaming net interface $iface to $l=
abel..."
> >> >                            up=3D$((`cat /sys/class/net/$iface/flags =
2>/dev/null || echo 1` & 0x1))
> >> >                            if test "$up" !=3D "0"; then
> >> >                                    ip link set dev $iface down
> >> >                            fi
> >> >                            ip link set dev $iface name "$label" && i=
face=3D$label
> >> >                            if test "$up" !=3D "0"; then
> >> >                                    ip link set dev $iface up
> >> >                            fi
> >> >                    fi
> >> >                    break
> >> >            fi
> >> >    done
> >> > done
> >> >
> >> > Maybe it would be better first to use "label" and then use ethernet =
alias?
> >> >
> >>
> >> It looks like there is already precedent for using ID_NET_LABEL_ONBOAR=
D for
> >> this purpose (on SMBios boards). It should be a fairly simple extensio=
n to
> >> add that as well. However, I didn't find any uses of this in Linux or =
U-Boot
> >> (although I did find plenty of ethernet LEDs). Do you have an example =
you
> >> could point me to?
> >>
> >> --Sean
> >
> > In linux:
> > $ git grep '"label"' net/dsa/dsa2.c
> > net/dsa/dsa2.c: const char *name =3D of_get_property(dn, "label", NULL)=
;
> >
>
> Hm, if Linux is using the label, then do we need to rename things in user=
space?
>

It is only using label for dsa ports, not for the general netdev case
which is what I feel should be added.

Tim
