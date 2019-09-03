Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58E6DA61D1
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 08:52:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727381AbfICGwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 02:52:05 -0400
Received: from mail-eopbgr750052.outbound.protection.outlook.com ([40.107.75.52]:63362
        "EHLO NAM02-BL2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725878AbfICGwE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Sep 2019 02:52:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4C29hLm9CGUezrEEAum6vbTzxRaD/wpmkVAgoJxjWdt3b3pdyuz7NnB+i+o7pVwXtCHUq6+T30KG2KSLVrDeGD9phZqrGXgVNF1v3v/yn6WxGRlL1skDGPz6dd/GAgZmNDgXOif/x96Wp6Kruygkn4SQH/jtsbiVaZlPlxUBUIkMVMWDnhrrJGr//p4YfuhK2q0AcQUAbXC5m5VrWGioTxLb0L7aUzwjzHxcOD+H0g5giW2g19TjId9acAB3NA0fTFJmYpgpLx0JrSOriE72GqfSIutMDcpsI65uXLWlDBY+9H0H0vjK7ZauvITc2BuEzU+WZXLrjnpyrDbpD3a/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WYqNwfO/s3jH7X8NmpmzInLj7cLanrv54KQTAZxsIE=;
 b=WUtCG+y2KwwXjmRPz0WzkDJjt4tVZG2vDqL/B5+O03VCgHfptjk7UA4xmLgFR5/iYINkzQElRShV1huUh0qUjrv26TXevy1PWv3H28mUud2XKGdSC0bikvNvByWOfmyzugYGxcFshzU6ek+5xa4T3NQ7enX135qFgJGVTywyqW1561vS4hx7FRrf0u08KIISk2hxd43v0055Scmd9YZEva0q84g9wxQ9uPk70jJjE6vRudsyuMubQ0oXqWjRo3JLkBYpBvoXru26ZSVnYg2I7Oi1JDFhMpH2wat76bg7DIdGPe4Ac9/vDVllmphJ8cVxREMYHFIyqb7BT8cqo4bdqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=bootlin.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WYqNwfO/s3jH7X8NmpmzInLj7cLanrv54KQTAZxsIE=;
 b=hQGI85EKAoGziAxTfdw0sGdSg7LW0TBnqE3ANqHjiDBZfcUiXRiHHwq+wIq+12AvG7Vl/uemnWQE+bLUqaPI2PqgwCD8tiriNvkKGKWbOVoqKNr7u4ZTliDXgPVFCTk7G7SE0q0ilbmSfLdmDo5H5njBCr9B9A39z6Rf3CFzssA=
Received: from BL0PR02CA0087.namprd02.prod.outlook.com (2603:10b6:208:51::28)
 by BYAPR02MB5335.namprd02.prod.outlook.com (2603:10b6:a03:61::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.18; Tue, 3 Sep
 2019 06:51:58 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by BL0PR02CA0087.outlook.office365.com
 (2603:10b6:208:51::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19 via Frontend
 Transport; Tue, 3 Sep 2019 06:51:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2220.16
 via Frontend Transport; Tue, 3 Sep 2019 06:51:56 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
        by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1i52fT-0001Xb-NJ; Mon, 02 Sep 2019 23:51:55 -0700
Received: from [127.0.0.1] (helo=localhost)
        by xsj-pvapsmtp01 with smtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1i52fO-0002Zp-JH; Mon, 02 Sep 2019 23:51:50 -0700
Received: from [172.30.17.116]
        by xsj-pvapsmtp01 with esmtp (Exim 4.63)
        (envelope-from <michals@xilinx.com>)
        id 1i52fI-0002Yu-Q9; Mon, 02 Sep 2019 23:51:45 -0700
Subject: Re: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Michal Simek <michal.simek@xilinx.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com, praveenv@xilinx.com,
        Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
 <20190902222111.045ede17@xps13>
From:   Michal Simek <michal.simek@xilinx.com>
Message-ID: <59ab9db1-a94e-f6a7-9777-60959b682674@xilinx.com>
Date:   Tue, 3 Sep 2019 08:51:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902222111.045ede17@xps13>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(136003)(39850400004)(346002)(376002)(396003)(2980300002)(189003)(199004)(6666004)(7416002)(70586007)(66574012)(76176011)(2906002)(31696002)(52146003)(65956001)(65806001)(966005)(106002)(2486003)(356004)(81166006)(70206006)(50466002)(478600001)(47776003)(23676004)(36756003)(26005)(426003)(81156014)(8676002)(8936002)(44832011)(36386004)(336012)(186003)(446003)(2616005)(476003)(486006)(11346002)(126002)(5660300002)(107886003)(31686004)(4326008)(6246003)(9786002)(2870700001)(6306002)(305945005)(229853002)(58126008)(54906003)(316002)(110136005);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR02MB5335;H:xsj-pvapsmtpgw01;FPR:;SPF:Pass;LANG:en;PTR:unknown-60-83.xilinx.com;MX:1;A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 693d9e61-e90b-4b18-68fd-08d7303b3650
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);SRVR:BYAPR02MB5335;
X-MS-TrafficTypeDiagnostic: BYAPR02MB5335:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <BYAPR02MB53354BD0A68CB6789AC17A24C6B90@BYAPR02MB5335.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 01494FA7F7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vw+/MxKap4WH3cEmLMER/0C1BJ7HuuQzE3RdOmIvJbRPZz3dKl/V0gFr+F5sYYmYoADiJalR8o0ofa1weDUFSTWfLG4z23DL6WhJQ73As5/bnXNH950pz7TD6P0PoKID+TaYn8EdHYExePl55SdU8SmZ+evrEeSNb19YDgvsbTbxaZgqRrreY9ao/NyAdJdR6NRuLwN+vSp1UjOLyrJhtNgt5fjEtYJsyjuuAYLNfgImdAfMaePecxTYrFc3v0fAZoM8M8dY8AI7WWHBIxHc+Q13z7Sga5IdtFBZcKt4pSDXZyHvIc9moSaz/LDarC39hfrnpWgR4JDQcu63An3jCZWKnPSe7HqCdjfC4RHLANLF2XVGUkisPFZN0HiMzXWTLejaeBLtsyiLmxJuNaXttpnjDPWKU3DVFMpoP4p52vw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2019 06:51:56.2282
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 693d9e61-e90b-4b18-68fd-08d7303b3650
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5335
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02. 09. 19 22:21, Miquel Raynal wrote:
> Hi Michal,
> 
> Michal Simek <michal.simek@xilinx.com> wrote on Mon, 2 Sep 2019
> 09:39:11 +0200:
> 
>> Hi Miquel
>>
>> On 30. 08. 19 23:06, Miquel Raynal wrote:
>>> This IP is very simple so this driver manage both the DAI and the PCM
>>> streams, hence the presence of both components in this driver.
>>>
>>> There are plenty available interruptions when capturing or playing
>>> back audio that can be triggered but the only one that fits the ALSA
>>> sound system is the XFER_DONE which is used to bound sound
>>> periods. Other interrupts are masked. Please note that capture and
>>> playback are not possible at the same time though.
>>>
>>> Capture seems to work (at least it creates a file with something
>>> inside) but I have no capture mechanism on the board to actually test
>>> that it works correctly.
>>>
>>> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>>> ---
>>>
>>> Hello,
>>>
>>> This is my first contribution in the sound subsystem, I hope I've
>>> understood the core but I might be entirely wrong as well, so please
>>> do not hesitate to be critical on my choices.
>>>
>>> Thanks,
>>> Miquèl
>>>
>>>  sound/soc/xilinx/Kconfig            |   7 +
>>>  sound/soc/xilinx/Makefile           |   2 +
>>>  sound/soc/xilinx/xlnx-logicpd-i2s.c | 468 ++++++++++++++++++++++++++++  
>>
>> What IP is this?
>> https://www.xilinx.com/products/intellectual-property/audio-i2s.html
>>
>> https://github.com/Xilinx/linux-xlnx/blob/master/sound/soc/xilinx/xlnx_i2s.c
>>
>> Anyway I am adding Praveen and Maruthi to take a look.
> 
> Actually I have been tricked by a datasheet with the wrong title: this
> is a LogicPD IP, it is not from Xilinx. I will resubmit with a new
> driver name/compatible and add the relevant people.

ok. Great.

M
