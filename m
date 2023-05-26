Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADE5711FEB
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 08:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233339AbjEZG1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 02:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236693AbjEZG1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 02:27:05 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 466691A4
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 23:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685082399; x=1716618399;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wa/Rj8eX1IlIw9BmUGRDWFvx1jlTBOSqErHs6rVHRn8=;
  b=CqUvdR6BRx8ok8cgAX25Fd6elHvsqRUTlxfslBzErciYvvLD2nmAxPi8
   +7j5JcgpmOjNKEGMvdoE3Es4VKEyNNVs/o2kb3k5MQSnP3ZintItqVq39
   +JbW8ZRk2CGPRWqbiqrefKireBjJnOLDE9yD8d3HndU4L/o5/llL1LidW
   +b4XQ3Bb9zYdkQmQapztrBIkgdLZqNBsDE4q8dwvC67ACbV9tx9THCBSE
   Kzo5udI++FXG0ajKe8/Ds1EW7C7wnN9NGfjnkWgk2tp+Z7Rn0wNTdDnV8
   FNqw+faMJGnT8J/i2otIkbmnoX28/LHmNm4xs9R5w36BKFwuutyj1+MDX
   g==;
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; 
   d="asc'?scan'208";a="214991452"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 May 2023 23:26:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 25 May 2023 23:26:21 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 25 May 2023 23:26:20 -0700
Date:   Fri, 26 May 2023 07:25:58 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     William Zhang <william.zhang@broadcom.com>
CC:     Conor Dooley <conor@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <f.fainelli@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: dt_binding_check report false alarm?
Message-ID: <20230526-morality-spray-4bb99d00a93a@wendy>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
 <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
 <20230525-unlearned-trusting-1ed0cf6a6364@spud>
 <c7fe5781-5213-8a39-f7f7-a1f5e94249cd@broadcom.com>
 <20230525-mating-mutt-36a506094d38@spud>
 <58dbfc50-45ac-389d-10aa-740aee150b16@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e076N05BydOP/Xxs"
Content-Disposition: inline
In-Reply-To: <58dbfc50-45ac-389d-10aa-740aee150b16@broadcom.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--e076N05BydOP/Xxs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 25, 2023 at 10:56:45PM -0700, William Zhang wrote:

> Do we have any document list all these supported keywords/rules/syntax for
> yaml dts?

The example schema is a good place to look:
https://docs.kernel.org/devicetree/bindings/writing-schema.html?highlight=example+schema#annotated-example-schema

--e076N05BydOP/Xxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHBQ9gAKCRB4tDGHoIJi
0jMOAQDLq7JO3aySvxrsvXk7Yat+PpJ3XfQLeEcDFVMASJEiHwEAggqLyqXCi0Po
iiaipOLurNb+bnsKkMA+fQebu8xnogY=
=j8FJ
-----END PGP SIGNATURE-----

--e076N05BydOP/Xxs--
