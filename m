Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1167A2C9862
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 08:46:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727850AbgLAHqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 02:46:40 -0500
Received: from hqnvemgate26.nvidia.com ([216.228.121.65]:6440 "EHLO
        hqnvemgate26.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727837AbgLAHqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 02:46:40 -0500
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5fc5f4b80001>; Mon, 30 Nov 2020 23:46:00 -0800
Received: from [10.25.98.41] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 1 Dec
 2020 07:45:56 +0000
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: Use OF graph schema
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>
References: <20201117013349.2458416-1-robh@kernel.org>
 <20201117013349.2458416-3-robh@kernel.org>
 <CAL_Jsq+eOfhDzPV8A_hhGpkY3zpiVAuZ=Y353Ltn61ecCV2Dqg@mail.gmail.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <51a9b84d-ea93-0871-aa93-d9bdf50d5a47@nvidia.com>
Date:   Tue, 1 Dec 2020 13:15:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+eOfhDzPV8A_hhGpkY3zpiVAuZ=Y353Ltn61ecCV2Dqg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1606808760; bh=zgYgcsWSQ5ZLwwDEgMwRA/eS3vCY9/kmIKMLZ9mDae8=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=GO0Hi6Jj2/DmYB/GM7YG4wVWTxSL5zvKh3rdOlYAkMDfoxXTT9tzXMCa5qKVQBXQv
         63OxVvG4DLGOIi0JEV7yTSebsgdIfBz50YlRyi1VyIhFEzgRRrtRyqLQ2+Yk13FtxQ
         wP9nlH98FWQI87aSfZTnIQzWazb82o3KcwvFqIBY+4HPMJX8bgA9Y/x8nDAwlprBPU
         rYkIweFAHYPEnfkxi78BildHYhPsRLBL9kzRWIkw+gLqp47h2mKKTLdB3A4vFMo56W
         Xf2ClgFT5s8347OJDLMSkwY0Px7C1sdzyYiRsMyuf3oj4qGLYTXpur6Wma0H4c9YE3
         sYtXLqHS94GQA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

>> Now that we have an OF graph schema, let's use it for the
>> audio-graph-port schema.
>>
>> There's no need to define 'ports' nodes as specific bindings must define
>> that and port numbering of the child 'port' nodes.
>>
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>> Note that graph.yaml is part of dtschema now intead of the kernel tree.
>> ---
>>   .../bindings/sound/audio-graph-port.yaml         | 16 ++--------------
>>   1 file changed, 2 insertions(+), 14 deletions(-)
> Hold off on applying this. I think graph.yaml is going to need some
> more refinement.

Would this be OK if below part of the patch is submitted separately in 
case above is not immediately planned?

-        required:
-          - remote-endpoint
-

Currently I have dependency on this for series 
https://patchwork.kernel.org/project/alsa-devel/list/?series=391735&state=*. 


>
> The rest should be able to be applied without this patch.
>
> Rob

