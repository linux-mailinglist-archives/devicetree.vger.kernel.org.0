Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37CF429E50D
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:51:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730924AbgJ2HvF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:51:05 -0400
Received: from hqnvemgate25.nvidia.com ([216.228.121.64]:12340 "EHLO
        hqnvemgate25.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730817AbgJ2Hur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:50:47 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9a5f9a0000>; Wed, 28 Oct 2020 23:22:18 -0700
Received: from [10.25.99.37] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Oct
 2020 06:22:13 +0000
Subject: Re: [PATCH v5 1/3] dt-bindings: ASoC: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87zh45d0zp.wl-kuninori.morimoto.gx@renesas.com>
 <87y2jpd0yt.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <a3c05c0a-fc34-fc3f-e0bd-65c757ea6a76@nvidia.com>
Date:   Thu, 29 Oct 2020 11:52:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87y2jpd0yt.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603952538; bh=Sxw8n1rccAycho8PfwfHuREZ36JuZKl5o4ulBTQ6XQk=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=RF1xouYawKeI6B6lmFKpZfzzxWUhnwkkJ6DUotWBW/l9iavRQkRK1VnWbCI4xFOSb
         xhVGUP0ckUw4EI2mTfaPTfxnsL/LfxWKpRXUVzbPYDiOuLvk926+NmSJSlO16cMz+p
         eHKBOxj9uwoIiNUzSmtf9JwtVy4rjrUFbCmCM2HitoP9SYkCzkOaHUty+IIDN7jMwA
         2TgCIin1a2l553Q3qutML04OXMGy09bQIynO1/PoG7QDMpn4lhk3PcW17cOCDWbatV
         g+SJdwcvze1uag8dvg7TPrFqYgQX/u3RJXVuu/rH8LhGytbbpE4f1rwpxBwVDdD36V
         3AoF0sKEkYbSA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> This patch switches from .txt base to .yaml base Document.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Acked-by: Sameer Pujar <spujar@nvidia.com>
