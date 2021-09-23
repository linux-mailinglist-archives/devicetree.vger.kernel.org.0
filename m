Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18A654163A2
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 18:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbhIWQwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 12:52:55 -0400
Received: from relay07.th.seeweb.it ([5.144.164.168]:36135 "EHLO
        relay07.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231564AbhIWQwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 12:52:55 -0400
Received: from [192.168.1.101] (83.6.166.81.neoplus.adsl.tpnet.pl [83.6.166.81])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 41AB43F565;
        Thu, 23 Sep 2021 18:51:21 +0200 (CEST)
Message-ID: <872977d9-e920-d4c3-0022-412095ff6516@somainline.org>
Date:   Thu, 23 Sep 2021 18:51:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: [PATCH v3 01/17] dt-bindings: arm: cpus: Add Kryo 560 CPUs
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>, jamipkettunen@somainline.org,
        Hector Martin <marcan@marcan.st>,
        Sudeep Holla <sudeep.holla@arm.com>,
        angelogioacchino.delregno@somainline.org,
        devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        linux-kernel@vger.kernel.org, martin.botka@somainline.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        marijn.suijten@somainline.org, Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20210923162204.21752-1-konrad.dybcio@somainline.org>
 <YUywQLpCjKhipZeA@robh.at.kernel.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <YUywQLpCjKhipZeA@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 23.09.2021 18:50, Rob Herring wrote:
> On Thu, 23 Sep 2021 18:21:47 +0200, Konrad Dybcio wrote:
>> Document Kryo 560 CPUs found in Qualcomm Snapdragon 690 (SM6350).
>>
>> Reviewed-by:  AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>> ---
>>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.
>
It was an overlook from my side. Totally didn't mean to skip the acks/r-bs.

Apologies for the inconvenience caused.


Konrad

