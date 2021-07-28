Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309C93D890A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 09:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234143AbhG1HoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 03:44:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232691AbhG1HoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 03:44:16 -0400
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB758C061760
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 00:44:15 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id c3so1808922ilh.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 00:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LvNKTuZIP029zDvkIOsZD+5XM30Oo0b53Nsp0ruBkBo=;
        b=qMqOinJ/YSFyv9KY7Ult3nqZBH16CJyCmhUIPkxsHadG3+sxBQCXu1RZrVt98Yln0N
         0N6bzvYU8LbeSm8otNR406LOdbDSIhjkJks2tBvGVtRc1oogy700N/grQjlDB1b101qD
         xdI4UTp60JRgAaVuWMIhnRAQxaG1/UloNnR/qxtdpGUkns5+qEf/qJJ3okf/avj2no4O
         ILgM91Kr4bol9acA254SjIjjAYK7tYJ2hKWUaSmzksgr0Mto1wWf8IHnJcZ/QHw8keVP
         J1TyU6uaCijvKcapuVeVFYOmi1oK8M9ZYJf+SuSkueAABZLXcqr2GkwcapTkUa54gswx
         e6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LvNKTuZIP029zDvkIOsZD+5XM30Oo0b53Nsp0ruBkBo=;
        b=E5KXJnyhxo/80G+rg/XdGxZ4nxBcl2+sZ5YSOKV1A1Obk6eLKtoo2DGH+cTzqhcf/N
         CWwNcRLgBnIPBBLZ4tfzISJ42XiQm+/QfMAQaQ9Yc9gPNM/maNF2nFyUtOqYZMDmg5pC
         Fq4yyqapVyMVzjQmMbWURLvyfpH3V9/VtX1Ui1MEr3q1bibb7KqE9MIh9vVfZGcanQf/
         FJIa9Xy5B/Ipsa3fWakiXjX97n5+E+GJESOzqV8m7aZwAsftf0cjWJzd7Ane7qODLsu/
         dPm8Vw8W3LJldjfbbVekPwmwLLUR7NpqU9pZHkDIjjbDovN1Gpx+mY0nW1jmvzUeXoMv
         7wVA==
X-Gm-Message-State: AOAM533UvNBCqseV2J9saj+zfvIpjKrIxCUSvuYFo87JT0n1ZuCtVbRu
        4Zksvx9uChn5j36P6V4VnvWSbQ3O7WRDRDJNl9j3mQ==
X-Google-Smtp-Source: ABdhPJx9rioXjnavKmQEukEOy7O9wfxOzAEHagK/fM4qpTNDzN7r08+v5ARhnCaLATDu8WIpJr6TpaAstT3B4BsgoD8=
X-Received: by 2002:a05:6e02:dec:: with SMTP id m12mr1030131ilj.38.1627458255072;
 Wed, 28 Jul 2021 00:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-3-gerhard@engleder-embedded.com> <CAL_JsqLe0XScBgCJ+or=QdnnUGp36cyxr17BhKrirbkZ_nrxkA@mail.gmail.com>
 <CANr-f5wscRwY1zk4tu2qY_zguLf+8qNcEqp46GzpMka8d-qxjQ@mail.gmail.com>
 <CAL_JsqKq6H471iFoLWRGvNSLpaJmuF+feDFut2p+J725n3U4HA@mail.gmail.com> <ae17968a-e265-6108-233a-bd0538ad186c@xilinx.com>
In-Reply-To: <ae17968a-e265-6108-233a-bd0538ad186c@xilinx.com>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Wed, 28 Jul 2021 09:44:04 +0200
Message-ID: <CANr-f5zvWN6pFUqRHvYV9oMGhF+VBJzhK+yE+SqMuSEhA5-X7Q@mail.gmail.com>
Subject: Re: [PATCH net-next 2/5] dt-bindings: net: Add tsnep Ethernet controller
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 28, 2021 at 7:13 AM Michal Simek <michal.simek@xilinx.com> wrote:
> On 7/27/21 10:25 PM, Rob Herring wrote:
> > On Tue, Jul 27, 2021 at 12:35 PM Gerhard Engleder
> > <gerhard@engleder-embedded.com> wrote:
> >>
> >> On Tue, Jul 27, 2021 at 1:35 AM Rob Herring <robh+dt@kernel.org> wrote:
> >>>> +properties:
> >>>> +  compatible:
> >>>> +    oneOf:
> >>>
> >>> Don't need oneOf when there is only one entry.
> >>
> >> I will fix that.
> >>
> >>>> +      - enum:
> >>>> +        - engleder,tsnep
> >>>
> >>> tsnep is pretty generic. Only 1 version ever? Or differences are/will
> >>> be discoverable by other means.
> >>
> >> Differences shall be detected by flags in the registers; e.g., a flag for
> >> gate control support. Anyway a version may make sense. Can you
> >> point to a good reference binding with versions? I did not find a
> >> network controller binding with versions.
> >
> > Some of the SiFive IP blocks have versions. Version numbers are the
> > exception though. Ideally they would correspond to some version of
> > your FPGA image. I just don't want to see 'v1' because that sounds
> > made up. The above string can mean 'v1' or whatever version you want.
> > I'm fine if you just add some description here about feature flag
> > registers.
>
> Don't Xilinx design tool (vivado) force you to use IP version?
> Normally all Xilinx IPs have certain version because that's the only way
> how to manage it.

Yes I use an IP version in the Xilinx design tool. I use it as a version of the
VHDL code itself. In my case this version is not related to the
hardware software
interface. The goal is to keep the hardware software interface compatible, so
the IP version should not be relevant.

Gerhard
