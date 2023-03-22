Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59F6E6C5AA5
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 00:40:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbjCVXkR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 19:40:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbjCVXj6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 19:39:58 -0400
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF1B33CD1
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 16:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1679528358; x=1711064358;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=OGHCWQte3YjhGFJqMvAzpeC0UB5PdXMpxYWRoLzMsDk=;
  b=SyjwQSzFHKmh6WQJWp2naalFjC4+gaCk+BgYpcnSwI88iSfvHYbeK05k
   KenxW4pq67VU0hUQkMjaH5PsMv1QmzdPXEElDnWn0wkB3S+puVC0WU6Y+
   LJqaAO551mxA7OkffEcIGRGA2Jv2BlxB5+wVLRda3+mJ/Lo5LXHPAZXES
   bpnfps1NUT5AWRdqbstVzJe4wAHK0ZPzNh97T3LZezmBUxBVcnXs16PNL
   or2AG4cNsR5ObUPL0qGbzyq2ZpKOd1bUCq6ry/EK8TTnJYBHDTI37rAxX
   p9DGbC/GsRsPhTRCwcVfymUtHzjgf8Mui2N/KcDO5hHF/pnVNtPJy4+dG
   w==;
X-IronPort-AV: E=Sophos;i="5.98,283,1673884800"; 
   d="scan'208";a="338331051"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 23 Mar 2023 07:39:06 +0800
IronPort-SDR: GbM5pNz01Xnqf3lVERdwpvHGCmwaHo3UxhYV499QI0hgY9fPx/E+xy6PbjnybyD6KesthodQZU
 1wc/m4KMNdmnDvIqISGIgkJZaOVRpfRCkexXMLsDaR1KvYCKmu0PNJenq0h62dCxZkpOhEDBcE
 OFwDmmShOb+XtdYn7DhYnt+iUQHzpVWiH8yaRjtShGOpZIPuT4g2gt2tkPKLkFs7jW9sMGLCKT
 BmomI2SPmgoeMSO0Tv9croTxOqz68dHhQ/AwuivSbdPjFfZe4y64EvoTFC/wNtMPgjpZa2RMO5
 MTU=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 22 Mar 2023 15:49:42 -0700
IronPort-SDR: NeqNEjA1M+2MTn0lZDZYt2RuGu91ITFHmqWhHtDxZp2lujH85n8U3URvsZy+keFDf1us3j92xa
 0qlAomuMb4iQqgKy1Ek8nmW7mJA9T43GyJdqoUMtIgK++RwE+Zle+BG5NMuM4nJT5k4N8pPydt
 bwmlqu4bX4nJiG6YwPzfk+dLCNB2MYZu1itzaz0B90SLCbB1d6LGT3ACQxPtd7+/a36xgo8cxF
 BcRKIG3Yh4Dai2HEVS0jN466ttirNKu0lD8khpwc5y/LyMzDLocO2vRDnmrC7HDPSje/puS4sB
 jBw=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 22 Mar 2023 16:39:06 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PhlL20BtJz1RtVw
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 16:39:05 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1679528345; x=1682120346; bh=OGHCWQte3YjhGFJqMvAzpeC0UB5PdXMpxYW
        RoLzMsDk=; b=h9QS/6X7fJDm4CcTVHlExM/CvxKaQSHcJ3sMvlNeQIXATYROTa4
        ZSV+nLM79WCXq1AXsi8715n3y057dj2zZBTZOrGPgj9jkm1supLwusYWL+/prSZI
        mKf+YP1brVHXyAphtOar6qqhijH9KBR8i//9QjNisAvDcoaP8ZHx8+MfDD9yRlIq
        7KpzNJXuedKjhXsnAneHlHuEBq9aiR4Sv2avbjMPEZ/pxQHfL1Fnjv8S9jzQgYjO
        SRyztT4rEec+ORnjWXzFsMgcTgY8DXePtzO0bcTkiIX3hTkZboWSqZmd94itO88t
        SY88AkV3V1JB+53ucoVW86pRXi57DYvMVbQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id RUCuJp37kDHh for <devicetree@vger.kernel.org>;
        Wed, 22 Mar 2023 16:39:05 -0700 (PDT)
Received: from [10.225.163.96] (unknown [10.225.163.96])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PhlKy5gVBz1RtVm;
        Wed, 22 Mar 2023 16:39:02 -0700 (PDT)
Message-ID: <1f963db6-5404-e483-69ac-fe8eaf5bb478@opensource.wdc.com>
Date:   Thu, 23 Mar 2023 08:39:01 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: mfd: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, patches@opensource.cirrus.com
References: <20230322173519.3971434-1-robh@kernel.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230322173519.3971434-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/23/23 02:35, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research

