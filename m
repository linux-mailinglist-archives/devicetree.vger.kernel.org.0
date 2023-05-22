Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1888A70BC35
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 13:50:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233441AbjEVLtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 07:49:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233434AbjEVLtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 07:49:39 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 551949B
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 04:49:37 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2F4BD846D9;
        Mon, 22 May 2023 13:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684756175;
        bh=5h8tFLaViC7wAtJv2UIsskpU6DetOooNGyrX1vqrzWo=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=c+n/a+HHaYKQ/pY6Eh94LIRDxpl13v7YNviefndEMiWDlte+/4qM7BY5doK7vZ/Wx
         FLSG8neL8Gw0OxmoA4I7YaBEqOz25qVb6ZSpk0q7jqDjicBarSYhzf7X1qyH+e/HGQ
         vYrQtPtRsKDGgivQPMkCvPjmJcWfqtL+bb1/AtfLaoTMkYSQMsqM3MUviN2AJ1d2gY
         aTGAr31vYuWE3hurEje5r2N/10kyxSXVv6KnBc+wieaLzboaquZxNS1fcvibCAQs0I
         HBUfZiEMsKIEfXK+JabfGbEVXY6g/ugNgltvcDJuRzE7kOs0S05J1yXvrSQoNlCy9U
         CF9O5rNxYlJGg==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 22 May 2023 08:49:35 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Conor Dooley <conor@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
In-Reply-To: <20230519-floral-diagram-894858b940c1@spud>
References: <20230519125236.352050-1-festevam@gmail.com>
 <20230519125236.352050-2-festevam@gmail.com>
 <20230519-floral-diagram-894858b940c1@spud>
Message-ID: <e5ec645a717b13cf9b0e11aa59ea5a81@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

On 19/05/2023 16:23, Conor Dooley wrote:

>> +  bridge@18:
>> +    type: object
>> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
>> +    unevaluatedProperties: false
> 
> How come you need to upgrade the additionaProperties: false, and the
> "plain old" $ref is not sufficient?

I am passing unevaluatedProperties: false, not additionaProperties: 
false here,
so I am not sure I understood your comment.

If additionaProperties: false is not present:

$ make dt_binding_check DT_SCHEMA_FILES=fsl,imx6sx-gpr.yaml
   LINT    Documentation/devicetree/bindings
   CHKDT   Documentation/devicetree/bindings/processed-schema.json
/home/fabio/linux-next/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml: 
'oneOf' conditional failed, one must be fixed:
	'unevaluatedProperties' is a required property
	'additionalProperties' is a required property
	hint: Either unevaluatedProperties or additionalProperties must be 
present
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
   DTEX    
Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dts
   DTC_CHK 
Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb

So I will keep it like this.

I have taken all of your other feedback into account and will submit a 
v5.

Thanks,

Fabio Estevam
