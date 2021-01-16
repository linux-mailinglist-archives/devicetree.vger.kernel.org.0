Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83E702F8BEC
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 07:42:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725797AbhAPGmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 01:42:21 -0500
Received: from comms.puri.sm ([159.203.221.185]:52552 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725781AbhAPGmV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 01:42:21 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 9C8AAE01BD;
        Fri, 15 Jan 2021 22:41:40 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id i2thfZY25I2n; Fri, 15 Jan 2021 22:41:39 -0800 (PST)
Date:   Sat, 16 Jan 2021 07:41:37 +0100
In-Reply-To: <YAIWSr46dqZpYAat@pendragon.ideasonboard.com>
References: <20201007012438.27970-2-laurent.pinchart@ideasonboard.com> <20210115075918.26407-1-martin.kepplinger@puri.sm> <YAIWSr46dqZpYAat@pendragon.ideasonboard.com>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to YAML
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC:     agx@sigxcpu.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        robh@kernel.org, stefan@agner.ch
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
Message-ID: <AEF0DD5A-AB4B-4787-981A-02728F63AB9A@puri.sm>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Am 15=2E J=C3=A4nner 2021 23:25:14 MEZ schrieb Laurent Pinchart <laurent=
=2Epinchart@ideasonboard=2Ecom>:
>Hi Martin,
>
>On Fri, Jan 15, 2021 at 08:59:18AM +0100, Martin Kepplinger wrote:
>> hi Laurent,
>>=20
>> Do you mind me adding a DT property in the old format now? If so, I'd
>> appreciated an ack in this thread:
>>
>https://lore=2Ekernel=2Eorg/linux-arm-kernel/20201201134638=2EGA305734@bo=
gon=2Em=2Esigxcpu=2Eorg/
>>=20
>> If it causes extra work for you and want to resend your series soon,
>I'll
>> gladly delay them for later=2E
>
>I think the conversion ot YAML is ready=2E I've split it from the rest of
>my series, and posted a v3, asking Rob to merge it=2E Would you mind
>rebasing the addition of the new properties on top ?


Hi Laurent,

thanks for the timely answer=2E sounds good; I'll rebase=2E

                 martin
