Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF05B708AB5
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 23:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbjERVqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 17:46:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjERVqs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 17:46:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9868718C
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 14:46:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F3D4965251
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 21:46:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2182C433D2;
        Thu, 18 May 2023 21:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684446406;
        bh=1MwnOw+qgDbLBDN3iFRlRsgNFgIKQwLtfcnhoWwiYBQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aevofiarMjwpx7ic/MUR73NprtWXAWTaU8bxeSHDI8a21txFNvockEIRuCErWltqy
         C5HVl3RACBU+QOamF6HJGyXspuXSHMpyEgi+AZX0ANnRpjgJg29Ca8zPbipZ1DZkYV
         w23pRzwKY7I1WL8jq72HIU86NnFmrRV6VM28WuutPkFXH372aN796th5ElmKM5ZRSB
         HNKDs0b6ASYBm2w9QBsr8t9iIKpHU0ODranLmIMlWjONntBki+ZbIoXz/X1QZsAejB
         sq6KJa2S5XRCgIQfFXZQ4P/q4MstK01pESQdcSTAHG3W1cQ/p6UcNZNZGOlKai4j3W
         Wi1A7yW19pUtw==
Date:   Thu, 18 May 2023 22:46:42 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 2/2] soc: imx: imx6sx-gpr: Introduce a GPR driver
Message-ID: <20230518-zone-carpentry-58725c59fd05@spud>
References: <20230518192628.151462-1-festevam@gmail.com>
 <20230518192628.151462-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3pLUZw+RLgKPTfl5"
Content-Disposition: inline
In-Reply-To: <20230518192628.151462-2-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3pLUZw+RLgKPTfl5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 18, 2023 at 04:26:28PM -0300, Fabio Estevam wrote:

> +static const struct of_device_id imx6sx_gpr_ids[] = {
> +	{ .compatible = "fsl,imx6sx-iomuxc-gpr" },

Is this an undocumented compatible?

Cheers,
Conor.

--3pLUZw+RLgKPTfl5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGacwgAKCRB4tDGHoIJi
0kDXAQCw9jk6/w5A1YIuhBkz4sYf+BUzc9UdQVKkfLPiNnf8QAD9E5QUQyvqDgeM
f4kZHFEMp1g2OiuGed3wyG5zUa4EKQo=
=dlN4
-----END PGP SIGNATURE-----

--3pLUZw+RLgKPTfl5--
