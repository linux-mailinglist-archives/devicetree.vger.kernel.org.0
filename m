Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2798E10C6BB
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2019 11:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726401AbfK1Kbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Nov 2019 05:31:37 -0500
Received: from ns.iliad.fr ([212.27.33.1]:44474 "EHLO ns.iliad.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726383AbfK1Kbh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 28 Nov 2019 05:31:37 -0500
Received: from ns.iliad.fr (localhost [127.0.0.1])
        by ns.iliad.fr (Postfix) with ESMTP id 7AFA22056B;
        Thu, 28 Nov 2019 11:31:35 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
        by ns.iliad.fr (Postfix) with ESMTP id 6BCB2201B5;
        Thu, 28 Nov 2019 11:31:35 +0100 (CET)
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
To:     Oliver Graute <oliver.graute@gmail.com>
Cc:     DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
 <20191029122026.14208-2-oliver.graute@kococonnector.com>
 <9b865fc1-3c7a-f1bd-8ef2-65088d64b314@free.fr>
 <20191128095514.GA2460@optiplex>
From:   Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <ed8b6139-a67d-d5d3-c65b-260d020c95e0@free.fr>
Date:   Thu, 28 Nov 2019 11:31:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191128095514.GA2460@optiplex>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ; Thu Nov 28 11:31:35 2019 +0100 (CET)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2019 10:55, Oliver Graute wrote:

> On 28/11/19, Marc Gonzalez wrote:
> 
>> On 29/10/2019 13:23, Oliver Graute wrote:
>>
>>> +&fec1 {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_fec1>;
>>> +	phy-mode = "rgmii";
>>> +	phy-handle = <&ethphy0>;
>>> +	fsl,magic-packet;
>>> +	fsl,rgmii_txc_dly;
>>> +	fsl,rgmii_rxc_dly;
>>> +	status = "okay";
>>
>> The two fsl,rgmii* properties do not exist in mainline.
>> I suppose there were copied from downstream?
> 
> you are right, I'll remove them.

You should first check what the downstream driver does for them.
And check if there is an equivalent action in mainline.
These delays tend to be required for the PHY to work at all.

Regards.
