Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50E9C4F9AD1
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:38:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233234AbiDHQkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232714AbiDHQkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:40:35 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332AE122213
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:38:28 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E2CE383AFF;
        Fri,  8 Apr 2022 18:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649435905;
        bh=FosmuyZlHcCoNFnrY5Gn852WiIIppXj5Vt/uxU8sfzE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=CHli/DT0NNYtghCfxR7mxxAY83YXOXb+NpuFExnbEWek75MUYGDxteDHZWDUfUaDi
         jafw+/BaewVlADp9+I1rAc/lsKrEmSyhZk1b7y1338iPxzhvm0dVrXvxXnQBfN5DfF
         jHRvIQVytZMVE8nDLhIcX1/q3ybONQr66a70jTu5IYNhDqImU+sGMuqvucknvfjBHz
         kwLB9aGaUCIfYAN/O0WAWu5xBWVMsCnFypYw1njJzWaQxe81oK/XsUvQ3AH4XVZuSf
         djkVucd1hxSV3mGVnPh85GFDIcIEUPca4NsREljkcmtsW7KNit3ZfP7WR7/l/MhtTX
         HnF4+vTiKwKTg==
Message-ID: <d662e462-b9a2-39ab-cefb-5d391d49a96b@denx.de>
Date:   Fri, 8 Apr 2022 18:25:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Content-Language: en-US
To:     Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "peng.fan@nxp.com" <peng.fan@nxp.com>,
        "festevam@denx.de" <festevam@denx.de>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
References: <20220407202456.244917-1-marex@denx.de>
 <defe2e0dc5447028e38014e55d77b98b39d8a1a4.camel@toradex.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <defe2e0dc5447028e38014e55d77b98b39d8a1a4.camel@toradex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/8/22 09:55, Marcel Ziswiler wrote:

[...]
>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
>> index 8a7ed7782e99f..a6286581fa13b 100644
>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
>> @@ -819,6 +819,7 @@ properties:
>>                 - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
>>                 - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
>>                 - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
>> +              - menlo,mx8menlo            # i.MX8MM Menlo board
> 
> Would it make sense mentioning that it is a carrier board for Verdin modules?

I will add it in V2.
