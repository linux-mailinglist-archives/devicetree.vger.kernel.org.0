Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57EF829A46E
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 07:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506167AbgJ0GDz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 02:03:55 -0400
Received: from hqnvemgate25.nvidia.com ([216.228.121.64]:10657 "EHLO
        hqnvemgate25.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506151AbgJ0GDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 02:03:55 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f97b84f0000>; Mon, 26 Oct 2020 23:03:59 -0700
Received: from [10.25.99.37] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 27 Oct
 2020 06:03:52 +0000
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
CC:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
 <75ca7528-3177-46cb-73c5-46e32e63ad44@nvidia.com>
 <87h7qgw848.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <eba1f18a-0b2e-d52b-593a-9ef5304f9199@nvidia.com>
Date:   Tue, 27 Oct 2020 11:33:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87h7qgw848.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603778639; bh=j5+Ddn/F47IduMD7D47vsNvoRG9UFowAZei94y/ho/4=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=D3DUonb4PTxHrjJnyPM11NJIK257d4N2PhCaZ/jFn56di3CkO5DaKQJf3/gqv+9go
         mWXSiDquNXbUqJ/0KfhTtsIiejMgJmOGOfZit3UwLGMYaf+Kj9F5Pa/QBmusaWgJx0
         ggkPeUCpnnYXTYGFcMUddfNYELSglMAR9miqfmyAZNbJ+/sFqbxrRCR0h2Pl16bqST
         ZRDQiHdvH+lvt7/dOXdIR/xAEMv11g3Cw+iEMZbZPzXXz4lyGiclasEd1zftEwh2n/
         KAaczMJqG+b7dmq9XIrldnLwxSGTNLKYCGRqInDornWengyQhw1QdqugHLgpbsA6r8
         Rky2FoXC18Myg==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

>>> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>>
>>> This patch switches from .txt base to .yaml base Document.
>>>
>>> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> (snip)
>> Since I am trying to re-use most of audio-graph for Tegra, can
>> 'compatible' be moved to a separate schema?
>> For example,
>> audio-graph.yaml -> defines all the common stuff
>> audio-graph-card.yaml -> audio-graph.yaml + 'compatible' property
>> Similarly, tegra-audio-graph-card.yaml -> audio-graph.yaml + Tegra
>> 'compatible' property
> I'm not expert of Json-Schema, and it sound very expert technique for me.
> (It always indicates me unknown errors...)
> I'm posting this patch since many month ago, and not yet accepted
> for many reasons (audio-graph DT is very complex).
> I spend many times for it and finally come to the point where it
> can (might) be accepted.
> I'm sorry but I want to finish this work,
> this means I don't want to customize it any more.
> If I try it, it needs more month...

I am not a json-schema expert either :) From earlier comments on Tegra 
audio graph series, above re-use is possible I suppose. I depend on your 
audio-graph documentation and for 'compatible' I am seeing error. So I 
thought it may be fine to split audio-graph into two json-schemas now 
itself. Otherwise I need to do it separately in my series if I want to 
re-use your audio-graph, which is fine with me.
