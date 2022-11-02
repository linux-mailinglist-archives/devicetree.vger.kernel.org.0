Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A56616FD3
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 22:32:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbiKBVcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 17:32:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230348AbiKBVco (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 17:32:44 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52309DFF2
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 14:32:44 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2LWWYJ015875;
        Wed, 2 Nov 2022 16:32:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667424752;
        bh=0F0hdfwm2rtrjMpk2J1iPyEvqzxJI/2qkNDmNlTsz2g=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=QqBDkkiGI6A2gR+1AntKLPwU4zesFWXGUGNbBD3r/6P7YgHBNZEzfb0LSqkTNnjp0
         IYaCjeoNok32HhpDHxjy9OhWm3sytryNHvSa+DbcgLMSjFOSXBEoBUi8hntUm6Y5J7
         x92uXokKi1M9nbUz19ntxotuw1t0qlvuorVFFiaM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2LWWiU114211
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 16:32:32 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 16:32:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 16:32:31 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2LWVtI024398;
        Wed, 2 Nov 2022 16:32:31 -0500
Date:   Wed, 2 Nov 2022 16:32:31 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Judith Mendez <jm@ti.com>
CC:     Matt Ranostay <mranostay@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
Message-ID: <20221102213231.zljnsdpmfcht7xvw@mascot>
References: <20221024151648.394623-1-mranostay@ti.com>
 <615d6805-4b0c-c3ad-f4d7-dc0536e6cabe@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <615d6805-4b0c-c3ad-f4d7-dc0536e6cabe@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15:14-20221102, Judith Mendez wrote:
> Hello,
> 
> On 10/24/22 10:16, Matt Ranostay wrote:
> > Avoid the following warnings from dt-schema by just renaming the
> > clock-names string from adc_tsc_fck to fck so it matches the values in
> > ti,am3359-tscadc.yaml
> > 
> > tscadc@40200000: clock-names:0: 'fck' was expected
> > 
> 
> Tested on AM64x GP EVM.
> 
> Verified-by: Judith Mendez <jm@ti.com>

Documentation/process/submitting-patches.rst Could you use the standard
conventions defined there? I think you mean Tested-by? if so, please use
that tag.

Quote from documentation:
"A Tested-by: tag indicates that the patch has been successfully tested (in
some environment) by the person named.  This tag informs maintainers that
some testing has been performed, provides a means to locate testers for
future patches, and ensures credit for the testers.
"

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
