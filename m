Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BB63788681
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231446AbjHYL7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 07:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239962AbjHYL7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 07:59:16 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7996F198E
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692964754; x=1724500754;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jYa2rmbVibTTzJA1qhXhwMJJgoIx8FJOzgkA0XkdUoI=;
  b=KD1KEj1pR/aMYiBhXhh3/xdOycbjDcSfqEVv6jN83CLVnwTQlHv84l54
   I0NUKuxlkvRZClgnpWeng4rZiAOjs/rH2L+PIEvD72DajsyDzOBKJL/Zf
   MOQDTh9jxtcZ4HB4zXgpdmXt/LPOsNuPdiXjZAGhXDZ0vcHBHGmC7Y1V+
   NdnpE9m+jyRitYCmoHpobyKt4Cm6gFHdI02tFYj7kDJNSoqD6dAo2TcCU
   JH/90hUd5v/D20+N60D0O25OifjDpGR+BAVUb234gK2rnOznwAPg1VDsr
   +ue4KZYvJ15JY66Z+kXud5KWJ82VBbeJoXj3ze6eNGlNtPMxYL3P3rOwz
   w==;
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; 
   d="asc'?scan'208";a="231707760"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 Aug 2023 04:59:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 25 Aug 2023 04:58:31 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex02.mchp-main.com (10.10.85.144)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Fri, 25 Aug 2023 04:58:28 -0700
Date:   Fri, 25 Aug 2023 12:57:47 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Huacai Chen <chenhuacai@kernel.org>
CC:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <loongson-kernel@lists.loongnix.cn>,
        Xuerui Wang <kernel@xen0n.name>, <loongarch@lists.linux.dev>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v4 0/7] LoongArch: Add built-in dtb support
Message-ID: <20230825-doubling-waltz-6444e26152db@wendy>
References: <cover.1692783907.git.zhoubinbin@loongson.cn>
 <CAAhV-H7hi=yc=PfDBafXVS5CSwEeE2WmbAAhnnDm6iYFF3YzkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="R5RCBxfpk++k8id+"
Content-Disposition: inline
In-Reply-To: <CAAhV-H7hi=yc=PfDBafXVS5CSwEeE2WmbAAhnnDm6iYFF3YzkQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--R5RCBxfpk++k8id+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 25, 2023 at 07:38:31PM +0800, Huacai Chen wrote:
> This series looks good enough to me now, if no one has objections, I
> will queue it to loongarch-next.

Have you not read Rob's replies?

--R5RCBxfpk++k8id+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOiXOwAKCRB4tDGHoIJi
0oioAQC9seDAPhpBfYC7+N1in3TS0o5zdeEk2mw4b3K/ssqF+QEA2FP8m2uGc2Dq
K0SUjJOOl8j5/YcevMEjOmMFb8O7QAM=
=x241
-----END PGP SIGNATURE-----

--R5RCBxfpk++k8id+--
