Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF3E786D68
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 13:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231283AbjHXLJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 07:09:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237392AbjHXLJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 07:09:02 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B87E110F3
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 04:09:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 46A766338E
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:09:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BE2BC433C7;
        Thu, 24 Aug 2023 11:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692875339;
        bh=+nIPRNwWN0uPhPgTiNhSPzUq4kyLyJDa3SO/1xRudy8=;
        h=Date:To:References:From:In-Reply-To:Resent-Date:Resent-From:
         Subject:Resent-Cc:From;
        b=oFbwOp0tMvhZG9CwjFdDL4kmBISCWR9oV6vx/XNoiXY72lXnviR/gcm3LX6lrd6KW
         5tWrnPMQLgYfUs2m784AoM+ehSeBTtbnlJnqp0hOfk5T+VYymIdebM9RS37aFcomTU
         bzdgbAlMpnRx4hLzBzTkeKNmhZo3jWvHbSUM0/8sXdTmnM+GtWil7epYDqQHjomBLZ
         SsuS5Vg2Bc7G1jcLz2/upxELXk8c+YCxe2omHHiumjAQDEkYo2TK0kl4a1K2iQ+/pM
         tCQfq2sC3PyM/c/25I6ad06CozZAbYkXVx5PlvccltCwjDXSTB4pMzE33hiqO+PBrf
         iUSYig5UMnFHg==
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org; envelope-from=krzk@kernel.org; receiver=<UNKNOWN> 
Authentication-Results: OpenDMARC_mail.nic.cz; dmarc=pass (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.nic.cz;
 dkim=pass header.d=kernel.org header.s=k20201202 header.b=TS337c5f;
 spf=pass (mail.nic.cz: domain of krzk@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=krzk@kernel.org;
 dmarc=pass (policy=none) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692865410;
 bh=+nIPRNwWN0uPhPgTiNhSPzUq4kyLyJDa3SO/1xRudy8=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=TS337c5fFMhGB/cVyjRElnl/dSKWN5GVBVmOSUZkAV0FJUDYMRCVtHLWHnmvENbVZ
  d9gtoxdhU4ZHdUaNIckfkXXJX+s9Jci87fZ45yppqQm0EW7d/z3KP+Quis0wVaVIFi
  kIW8qnvTV6fOHzT8neapc1r2bwTnmh2K+XvzY4NdZtmcBBtAhoPMaL4Yqa7wu1TNHJ
  qfBCkPdDiL+GvAAUrjXbS22FbChS5TusOr1vzyQ6AxpJK4zdMlJG5l6DfUuK+2qE7K
  UZuXbm40RJ4MFmy2Q1cE9S3TgfNjloEMNJxkYMGZP3Pfn7KUAiSp7QabqeZmcf2eQ8
  8RtImRl617niQ==
Message-ID: <5dfbdffa-7460-d1df-b821-63231fb7af66@kernel.org>
Date:   Thu, 24 Aug 2023 10:23:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
References: <20230823161012.6986-1-kabel@kernel.org>
 <20230823161012.6986-2-kabel@kernel.org>
 <7213dd0d-5783-cda7-6d49-8bf442e81921@kernel.org>
 <20230824100349.2d0080d8@dellmb>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org> (by way of Marek
        =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>)
In-Reply-To: <20230824100349.2d0080d8@dellmb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.7 at mail
X-Virus-Status: Clean
X-Spamd-Result: default: False [-0.00 / 20.00];
 BAYES_SPAM(3.10)[100.00%];
 DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
 RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
 RCVD_IN_DNSWL_MED(-0.40)[52.25.139.140:received,2604:1380:4641:c500::1:from];
 R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
 MIME_GOOD(-0.10)[text/plain];
 BAD_REP_POLICIES(0.10)[];
 NEURAL_HAM(-0.00)[-0.975];
 FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 RCVD_TLS_LAST(0.00)[];
 DMARC_POLICY_ALLOW(0.00)[kernel.org,none];
 ASN(0.00)[asn:54825, ipnet:2604:1380:4640::/44, country:US];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_THREE(0.00)[4];
 TO_DN_ALL(0.00)[];
 FROM_HAS_DN(0.00)[];
 ARC_NA(0.00)[];
 DKIM_TRACE(0.00)[kernel.org:+];
 R_SPF_ALLOW(0.00)[+a:dfw.source.kernel.org];
 MID_RHS_MATCH_FROM(0.00)[];
 RCPT_COUNT_ONE(0.00)[1];
 TO_DOM_EQ_FROM_DOM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mail
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_EXCESS_BASE64,
        NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Rspamd-Queue-Id: 9B5581C070F
X-Spamd-Bar: /
Subject: Re: [PATCH 1/4] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 10:03, Marek Behún wrote:
> Hello Krzysztof,
> 
> thanks for the review.
> 
> On Thu, 24 Aug 2023 09:37:23 +0200
> Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>> On 23/08/2023 18:10, Marek Behún wrote:
>>> Add binding for cznic,turris-omnia-mcu, the device-tree node
>>> representing the system-controller features provided by the MCU on the
>>> Turris Omnia router.
>>>
>>> Signed-off-by: Marek Behún <kabel@kernel.org>  
>>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC (and consider --no-git-fallback argument). It might
>> happen, that command when run on an older kernel, gives you outdated
>> entries. Therefore please be sure you base your patches on recent Linux
>> kernel.
> 
> I shall do that.

You replied only to me. Instead please reply-to-all to keep discussions
public.

> 
>>> ---
>>>  .../bindings/arm/cznic,turris-omnia-mcu.yaml  | 72 +++++++++++++++++++
>>>  MAINTAINERS                                   |  1 +
>>>  2 files changed, 73 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml
>>> new file mode 100644
>>> index 000000000000..055485847e71
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/arm/cznic,turris-omnia-mcu.yaml  
>>
>> ARM directory is only for top-level bindings, so this should go to soc.
> 
> Hmm. The board uses a marvell SoC, but the board is from CZ.NIC (who
> does not create its own SoCs). So should this go into soc/marvell or
> soc/cznic?

Indeed and it is a dedicated MCU (some Cortex-M or similar, right?), so
maybe arm is suitable at the end.

> 
>>> @@ -0,0 +1,72 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/arm/cznic,turris-omnia-mcu.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: CZ.NIC's Turris Omnia MCU
>>> +
>>> +maintainers:
>>> +  - Marek Behún <kabel@kernel.org>
>>> +
>>> +description:
>>> +  The MCU on Turris Omnia acts as a system controller providing additional
>>> +  GPIOs, interrupts, watchdog, system power off and wakeup configuration.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: cznic,turris-omnia-mcu
>>> +
>>> +  reg:
>>> +    description: MCU I2C slave address
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  interrupt-controller: true
>>> +
>>> +  '#interrupt-cells':
>>> +    const: 2
>>> +
>>> +  gpio-controller: true
>>> +
>>> +  '#gpio-cells':
>>> +    const: 2
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - interrupt-controller
>>> +  - gpio-controller
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +
>>> +    ic: interrupt-controller {
>>> +        interrupt-controller;
>>> +        #interrupt-cells = <2>;
>>> +    };  
>>
>> Drop this node, not relevant.
> 
> Will the binding example compile without the ic node if the
> system-controller below uses it?

Yes.

> 
>>> +
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        system-controller@2a {
>>> +            compatible = "cznic,turris-omnia-mcu";
>>> +            reg = <0x2a>;
>>> +
>>> +            interrupt-parent = <&ic>;
>>> +            interrupts = <11 IRQ_TYPE_NONE>;  
>>
>> Are you sure interrupt is type none?
> 
> The interrupt type is either LEVEL_LOW or EDGE_FALLING, depending on
> the version of the MCU firmware, so this has to be selected by the
> driver.
> 
> I tried setting LEVEL_LOW, since that is the one that is used by the
> newest MCU firmware. But then if the firmware is old and I want to
> select EDGE_FALLING in the driver when requesting the IRQ, it fails
> with message
>   type mismatch, failed to map hwirq-%lu for %s!
> from
>   kernel/irq/irqdomain.c function irq_create_fwspec_mapping
> 
> I guess I can use irqd_set_trigger_type() before requesting the IRQ to
> avoid this error.
> 
> Should I use use LEVEL_LOW in the binding example and device-tree?

I guess in such case this NONE is okay

Best regards,
Krzysztof

