Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7626570D1DC
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 04:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232204AbjEWC5P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 22:57:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbjEWC5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 22:57:14 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D7CCA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 19:57:13 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 37348820F2;
        Tue, 23 May 2023 04:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684810630;
        bh=nK0i6fvjwQYkYvXTFKBA5BU3O2i1ROb3kGpfwp6ELp0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AJuTWTX/YlLLAbESBjuJvz4D2ExHsKdaZUo+6CS5nr+J+TR3OefL8KrQWKSaPVGFE
         ha7rJ2bJmQCc5SZ2upIywt28jsvgEDZhFOpyiCkgtvjZXuaeX7jZ4kP/2BPjVzLr6Z
         u6Kt8u+N1MnCsRu2g5ch8A4CEQ4RgpPYKxoM6fFUa8ZDoVU/9ua3BxP0SKPp+bpDGZ
         pTH5Y9U2UoDkisVEEdb/oqHAOWi8IloRiqpiS0QYAvQWhcbx9ij1vF439DWk+aMKKJ
         QDfnUM0OZaY9PTTAozoUCuHQE4oKlaLGs+nYvC3X+1H5vTQnllUhKOsNxkHHyuanaR
         YYoumP6ontPtw==
Message-ID: <8c002f0e-0408-2ff1-42e0-3442b6eef9af@denx.de>
Date:   Tue, 23 May 2023 04:27:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 1/5] PCI: imx6: Use a more specific i.MX6SX GPR
 compatible
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, bhelgaas@google.com,
        Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522201404.660242-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 22:14, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On the i.MX6SX case, the more specific GPR (General Purpose
> Register) compatible, "fsl,imx6sx-iomuxc-gpr", can be used instead
> of the more generic "fsl,imx6q-iomuxc-gpr" one.
> 
> Switch to using the more specific i.MX6SX GPR compatible.
> 
> The motivation for this change is to allow the introduction of
> i.MX6SX GPR driver that will be used to control the i.MX6SX LDB bridge.
> 
> Old DTBs are unaffected by this change.
> 
> Suggested-by: Marek Vasut <marex@denx.de>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>
