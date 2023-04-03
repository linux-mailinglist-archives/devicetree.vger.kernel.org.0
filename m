Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 024C36D45BB
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 15:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232628AbjDCN0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 09:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232664AbjDCN0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 09:26:04 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 606942B0CF
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 06:25:49 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E3D3585EC6;
        Mon,  3 Apr 2023 15:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680528346;
        bh=9wR4rXBy2GZz4SV64ZRGC59tcnUwDYhUwqWJI2C8ok0=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=VpoN4iT8Cix3nLFGddFDNQnA+wFREz74LA9xWxIPBmPHdv1XWHKIgnABNDm8zafAP
         O9MD3CAxBauL2l11cQCemKBoSQOxaKT9ciT5n8WgUtF98HczgvllQngE6kh6Bipjtv
         zPYWvrdFP4n8kkE5aJQyvd7bmTo0uf3nPBrKS91Vm0/K1ktXQjEIb0yt2UzfJzFOQA
         bV+rL9UK4A3tgm5XU8i8Yt4UPyUQ4EohJBj8AGu2okJIoLIVN+wPMVUeVP4izpXJYk
         dWWXNWYhvw5N/WZQuLXoq8J/oaXEXAY6iXwl/msg70S5MCsBmh1xEE8zggHoC2rV+B
         gOmurdbyLcjxw==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 03 Apr 2023 10:25:45 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        inki.dae@samsung.com
Subject: Re: [PATCH v2] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
In-Reply-To: <8f7f925f-638d-737c-bf47-2a66ce0eec59@linaro.org>
References: <20230403124458.198631-1-festevam@gmail.com>
 <8f7f925f-638d-737c-bf47-2a66ce0eec59@linaro.org>
Message-ID: <074183d480cf18948aacd98be60308f8@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 03/04/2023 09:49, Krzysztof Kozlowski wrote:

>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>> ---
>> Changes since v1:
>> - Added samsung,mipi-dsim.yaml entry to MAINTAINERS file (Jagan)
>> - Added Marek Szyprowski entry to the samsung,mipi-dsim.yaml 
>> maintainers section (Jagan)
>> - Mention that i.MX8M Plus is also supported (Marek)
>> - Remove endpoint@0 description as it only has one endpoint (Marek)
> 
> Where is the changelog from original submission? How your v1 differs
> form it? Or did you just ignore all the feedback?

I'm sorry, but it was not my intention to ignore any feedback.

Which feedback are you referring to specifically?

Some more context: last week I sent a patch adding a new property
for exynos_dsim.txt and you asked me to convert it to yaml first:

https://lore.kernel.org/all/ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org/#t

Jagan pointed out an earlier submission he did in 2021:

https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutions.com/

That was my starting point.

>> +  phys:
>> +    maxItems: 1
>> +    description: phandle to the phy module representing the DPHY
> 
> OK, so you did ignore the feedback.

Not intentionally.

> NAK, go through the feedback and implement it.

Just found this feedback from Rob about Jagan's initial submission:

https://lore.kernel.org/all/20210712151322.GA1931925@robh.at.kernel.org/

I can send a new version that takes Rob's feedback into account.

Were there any further versions/feedback that were submitted? Can't find 
them on lore.

In another reply, you mention that this should be v13. I could not find 
previous versions of the yaml submission.

Please advise.

Thanks,

Fabio Estevam
