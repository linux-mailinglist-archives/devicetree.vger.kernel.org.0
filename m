Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C7EE29A481
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 07:16:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506348AbgJ0GPv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 02:15:51 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:11864 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506333AbgJ0GPQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 02:15:16 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f97bafa0001>; Mon, 26 Oct 2020 23:15:22 -0700
Received: from [10.25.99.37] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 27 Oct
 2020 06:15:12 +0000
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
CC:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
 <75ca7528-3177-46cb-73c5-46e32e63ad44@nvidia.com>
 <87k0vcw9zd.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <b4beff3d-2109-7c86-67ad-01071e023f79@nvidia.com>
Date:   Tue, 27 Oct 2020 11:45:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87k0vcw9zd.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603779322; bh=m8eIVXpohAhKwVK7bdPj1gb28+PpYlPtv35EBNssb2o=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=Bb/IMcgXP7YwciqUeFXmYtZAvmHezu3WC2LSWvhz5fK8r6hY/1noRevxG/bBsQyLg
         Ynizs1N1iTcwPcpNnLNo1nX3RFIRrMYK0Fw/ASAflTayJiX3fUnzC+zYF9gBAj+zbv
         6I8syh1u70wFVcnV4mMCCRyTrFi2vSVbLGEBQI8sjS+fQAA8OHVaOHvjPDYzmebmGI
         iGhL0EOySCNE5yf7DWl10eUwHJmESz/pC+8FNBZMC4NptQY/aIjayIEGyoTJZ5IVvA
         u1099Y2Ym49hcJ5KeHRtAzg9Dve87Ns7bTdGcJGnyQFWPUGcMCRczpNtdUelkaj2p6
         nFFxEgkGQwQ1g==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

>>> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>>
>>> This patch switches from .txt base to .yaml base Document.
>>>
>>> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>> ---
> (snip)
>>> +additionalProperties: false
>>> +
>> This needs to be true when other files want to reference this schema
>> and/or define some additional properties.
> *Current* audio-graph-card doesn't assume such case.
> I think you need to update it when you support tegra-audio-graph
This would be applicable when we want to split audio graph documentation 
into two schemas now itself. May be I will do this in my series.
