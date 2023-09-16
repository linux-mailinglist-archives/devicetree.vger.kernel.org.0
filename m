Return-Path: <devicetree+bounces-798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6B27A3263
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA0702822D7
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A26D1BDFF;
	Sat, 16 Sep 2023 20:07:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709FE7E
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:07:15 +0000 (UTC)
X-Greylist: delayed 964 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 16 Sep 2023 13:07:13 PDT
Received: from mailrelay4-1.pub.mailoutpod2-cph3.one.com (mailrelay4-1.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:403::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91CB4CC9
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=fezrpIaIpQxdaG2CC4X62gW75ZqMToSOm+5V/o22VUg=;
	b=VT+TV471gEc1E3zHRWfBlEo9MhYeIBvrxDTb6GIP0sJBCCIkujy8aSTtwuvqWW+L0kdbMAvpFiTF5
	 06Wkucd6Yj/85cL9xqdcPfy6L6a8rEV1hK3zcsQyDCNc3sqfWO4olwuvDV7E8ruBYoYdwIKptd5yst
	 41kG1JKyUHOyfOYSWr4MhjnnVXlvTgQT7UsgF2/NNueL66rxh12bdWYn2PG7utDO48BXvQFVlUMv4n
	 Fb1spmH6NhltIIhUF7IaCPlmp4CAxkc8GBqJhEAZxDiHCpKy0N5nPk5XWqrSMiR32tiGGYZdwqzklq
	 4HmbE8Vs2TgAlrPRDRS+cy8WZsQ8+Dg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=fezrpIaIpQxdaG2CC4X62gW75ZqMToSOm+5V/o22VUg=;
	b=w4PKBPRv9vrkQO3B3Qk3e/3d3yIWHWBxdbAL5WgOfG2AMY6O1uq1fUm8N1l3x4/NsJdgJIhLvlRhO
	 6w/KjtmBQ==
X-HalOne-ID: 5f1579ed-54ca-11ee-8b67-118fcd41062f
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay4 (Halon) with ESMTPSA
	id 5f1579ed-54ca-11ee-8b67-118fcd41062f;
	Sat, 16 Sep 2023 19:51:07 +0000 (UTC)
Date: Sat, 16 Sep 2023 21:51:05 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: alexandre.belloni@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, javier.carrasco@wolfvision.net,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v3] dt-bindings: rtc: pcf8523: Convert to YAML
Message-ID: <20230916195105.GA213821@ravnborg.org>
References: <20230905220826.79901-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230905220826.79901-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Fabio,
On Tue, Sep 05, 2023 at 07:08:26PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Convert the PCF8523 bindings from text format to YAML.
> 
> The YAML format is preferred as it allows validation.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Looks good,
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

I assume the dt people (or rtc people) will land this.

	Sam

