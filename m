Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B338728DA4A
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 09:07:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726354AbgJNHH0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 03:07:26 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:55502 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726141AbgJNHHZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 03:07:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1602659244; x=1605251244;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=V8DELpswpUebMaklhDWQ3Gh6K29prCEHKBIPgCE1N70=;
        b=b/WN/UrEPDx0af2uI5Lt7a3/BFGfX4LKpnSLsn/QG4307ivdFyZx8xa2aUhjTI9O
        T4E/GVsyWeGaQnwOdWxEKCwIYstqnzxtjLO7EyGcFi3ugTSaur+mUwEYJC7FtHQ5
        mOWL31n/MPHi8hNa8yr3GqndrNh5PbPPczgEwGK01nM=;
X-AuditID: c39127d2-253ff70000001c25-5c-5f86a3ac49cd
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id CE.6D.07205.CA3A68F5; Wed, 14 Oct 2020 09:07:24 +0200 (CEST)
Received: from [172.16.23.108] ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020101409072414-603760 ;
          Wed, 14 Oct 2020 09:07:24 +0200 
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add Phytec Nunki boards
To:     Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org,
        shawnguo@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, m.podolszki@phytec.de,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        c.hemp@phytec.de, j.remmet@phytec.de
References: <20201007133037.25315-1-m.felsch@pengutronix.de>
 <20201007133450.rx7jrqb3euxstjiw@pengutronix.de>
From:   =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <1bf364fd-6530-ca5a-06f2-25c3c9dd684a@phytec.de>
Date:   Wed, 14 Oct 2020 09:07:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201007133450.rx7jrqb3euxstjiw@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 14.10.2020 09:07:24,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 14.10.2020 09:07:24,
        Serialize complete at 14.10.2020 09:07:24
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrFLMWRmVeSWpSXmKPExsWyRoCBS3fN4rZ4g4lzRSzmHznHavHwqr/F
        qqk7WSy6fq1ktviw6yqzReveI+wWL7aIO7B77Jx1l91j06pONo+N73YwefT/NfD4vEkugDWK
        yyYlNSezLLVI3y6BK+Pqty6Wgq9CFfNOsDYwtvB1MXJySAiYSHyYN5Gli5GLQ0hgG6PEqZkn
        oZwzjBILl+xgBakSFnCXOHd2KwuILSIQLDH/yjE2kCJmgZmMEl8ermIGSQgJ5Ets3PuJEcRm
        E3CSWHy+A6iIg4NXwEbiyvIIEJNFQFXi1K8EEFNUIFJi5w5LkGJeAUGJkzOfgE3nFLCVON78
        iBVkuoRAI5PEp689rBCHCkmcXnwWbBOzgLzE9rdzoGwziXmbH0LZ4hK3nsxnmsAoNAvJ3FlI
        WmYhaZmFpGUBI8sqRqHczOTs1KLMbL2CjMqS1GS9lNRNjMD4ODxR/dIOxr45HocYmTgYDzFK
        cDArifC+km6LF+JNSaysSi3Kjy8qzUktPsQozcGiJM67gbckTEggPbEkNTs1tSC1CCbLxMEp
        1cC4Svt3xsFu64dv/cWskgvmrplnc7LCWWjSXMWgQ/piAhtrVttomivw9Smpmf3ZlD+/tONd
        aniRym+92QlvShZKFQt6VE1WOVu9obVcrD163rRdnGsW//xoNNmjouFSa3Tii7udXVeMju34
        qLTh/f89u0xLz8luCHPU/1f3sYw7IuEy79E1Rg+UWIozEg21mIuKEwFjB8GAfQIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

On 07.10.20 15:34, Marco Felsch wrote:
> Add missing Phytec developers to Cc.
> 
> Regards,
>    Marco
> 
> On 20-10-07 15:30, Marco Felsch wrote:
>> Add bindings for the Phytec PhyBOARD-Nunki evalboards.
>>
>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>> ---
>> Hi,
>>
>> I copied the imx6q-phytec-nunki-rdk-nand.dts and
>> imx6qdl-phytec-nunki.dtsi from the phytec downstream kernel repo and
>> added support for the imx6qp-phytec-nunki-rdk-nand.dts.
>>
>> @Phytec
>> I adapted the "phytec,imx6q-pbac11-nand" to "phytec,imx6qp-pbac11-nand"
>> and "phytec,imx6q-pbac11" to "phytec,imx6qp-pbac11". Can you verify that
>> since I have no knowledge about the internal naming scheme, thanks.

Yes, that is correct.

>>
>> Regards,
>>    Marco
>>
>>   Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
>> index 6da9d734cdb7..26410a42c411 100644
>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
>> @@ -156,6 +156,13 @@ properties:
>>             - const: gw,ventana
>>             - const: fsl,imx6q
>>   
>> +      - description: i.MX6Q Phytec PhyBOARD-Nunki Board

Please use all caps for PHYTEC and start phyBOARD with a lower case p.

>> +        items:
>> +          - const: phytec,imx6q-pbac11-nand
>> +          - const: phytec,imx6q-pbac11
>> +          - const: phytec,imx6qdl-pcm058
>> +          - const: fsl,imx6q
>> +
>>         - description: i.MX6QP based Boards
>>           items:
>>             - enum:
>> @@ -163,6 +170,13 @@ properties:
>>                 - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart Device Board
>>             - const: fsl,imx6qp
>>   
>> +      - description: i.MX6QP Phytec PhyBOARD-Nunki Board

Same here.

With these changes you can add my
Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Thanks,
Stefan

>> +        items:
>> +          - const: phytec,imx6qp-pbac11-nand
>> +          - const: phytec,imx6qp-pbac11
>> +          - const: phytec,imx6qdl-pcm058
>> +          - const: fsl,imx6qp
>> +
>>         - description: i.MX6DL based Boards
>>           items:
>>             - enum:
>> -- 
>> 2.20.1
>>
>>
>>
> 
