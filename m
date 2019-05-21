Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AAC2324EF9
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 14:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726448AbfEUMeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 08:34:04 -0400
Received: from ns.iliad.fr ([212.27.33.1]:33436 "EHLO ns.iliad.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726750AbfEUMeE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 08:34:04 -0400
Received: from ns.iliad.fr (localhost [127.0.0.1])
        by ns.iliad.fr (Postfix) with ESMTP id 4FD592084D;
        Tue, 21 May 2019 14:34:03 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
        by ns.iliad.fr (Postfix) with ESMTP id 36CF6206C6;
        Tue, 21 May 2019 14:34:03 +0200 (CEST)
Subject: Re: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
To:     Leonard Crestez <leonard.crestez@nxp.com>,
        Anson Huang <anson.huang@nxp.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DT <devicetree@vger.kernel.org>
From:   Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
Date:   Tue, 21 May 2019 14:34:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ; Tue May 21 14:34:03 2019 +0200 (CEST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/2019 13:56, Leonard Crestez wrote:

> On 5/17/2019 8:49 AM, Anson Huang wrote:
> 
>> +	root = of_find_node_by_path("/");
>> +
>> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> 
> It's possibly not very important for root or FW communication nodes but 
> you should probably of_node_put those back.

Isn't it better/simpler to use of_root?

extern struct device_node *of_root;

Regards.
