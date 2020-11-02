Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F23512A28A0
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 12:00:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728487AbgKBLAi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 06:00:38 -0500
Received: from hqnvemgate25.nvidia.com ([216.228.121.64]:15374 "EHLO
        hqnvemgate25.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728359AbgKBLAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 06:00:38 -0500
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9fe6d60000>; Mon, 02 Nov 2020 03:00:38 -0800
Received: from [10.25.99.190] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 2 Nov
 2020 11:00:35 +0000
Subject: Re: [PATCH v2] dt-bindings: Convert graph bindings to json-schema
To:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
CC:     <p.zabel@pengutronix.de>, <kuninori.morimoto.gx@renesas.com>
References: <1604075956-17010-1-git-send-email-spujar@nvidia.com>
 <1604075956-17010-2-git-send-email-spujar@nvidia.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <9af329bb-dbed-9b7d-4651-f5ada2c1948b@nvidia.com>
Date:   Mon, 2 Nov 2020 16:30:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1604075956-17010-2-git-send-email-spujar@nvidia.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1604314838; bh=T7utodxB+nZ4Jb31jKgtihCHmee7uvW3sbyh3Sp3pSE=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=AlPBonodVNvOTZEO5DEx9zhh+NA7AgtZkev8fKEDem2jWN1pLRy0f+2TJp/LU27Oq
         GjaqZAk+iAkSXwZF8Fx3ohqaATVGQ1TiJ0IbwWP++tcTM/dWPRaWg0HwH+QJk4u+gd
         7J/lB84DmCbceSLjfiqEunEigSCrePl1gGgfiPbv0dMddPghzthPLVN7boQ9Z7ATaA
         hmNYG2ZouXD4bH5uJNSBTDNq8pNkSO01lThSP4hI3xOvlECDZ6YWPCleJgZKXvof+H
         YpRCo97nK8BjUAoLH06Ni0YWIiz3N20oGTKfhYkuznH9fY8ABCx8S54mwz5kR/Nshz
         x8Rt0ivrL3HCQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

> Convert device tree bindings of graph to YAML format. Currently graph.txt
> doc is referenced in multiple files and all of these need to use schema
> references. For now graph.txt is updated to refer to graph.yaml.
>
> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>   Documentation/devicetree/bindings/graph.txt  | 129 +-----------------
>   Documentation/devicetree/bindings/graph.yaml | 188 +++++++++++++++++++++++++++
>   2 files changed, 189 insertions(+), 128 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/graph.yaml

As per report from 
http://patchwork.ozlabs.org/project/devicetree-bindings/patch/1604075956-17010-2-git-send-email-spujar@nvidia.com 
there are some warnings. I will fix yamllint warnings in v3.

However I don't see below errors when I run 'make dt_binding_check' locally.

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/graph.yaml: 
'additionalProperties' is a required property
schemas/graph.yaml: ignoring, error in schema:
./Documentation/devicetree/bindings/graph.yaml: Unresolvable JSON 
pointer: 'properties/port'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/graph.yaml: 
ignoring, error in schema:
warning: no schema found in file: 
./Documentation/devicetree/bindings/graph.yaml

Am I missing anything?

Thanks,
Sameer.
