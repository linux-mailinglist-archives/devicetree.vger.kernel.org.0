Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9D86F9DAD
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 04:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbjEHCPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 22:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbjEHCPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 22:15:24 -0400
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE2E01BE2
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 19:15:22 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
        by mailout.west.internal (Postfix) with ESMTP id F2AC43200344;
        Sun,  7 May 2023 22:15:18 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute6.internal (MEProxy); Sun, 07 May 2023 22:15:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-type:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1683512118; x=
        1683598518; bh=thsipzAUz9hoTA3uv+YAeIFR351QbQf8C08wcVjfO1o=; b=G
        XX1pnaJuuq1wK4LzCfWCukyAHeVk17FHvTZkZIaGu4LCD5/TDYvygDiW+rxx1VzL
        poKthYLJCNWvY4cVsDy4PMLCNGA0MIPkehq0QvfsmDQW4+kxc8iqhWkXNePA+iU0
        RONUoJTuu/si+jS2gTxnOCaldT6ATY4Fe5iGOev/jT3YWMPgLUfH3H6hqtHIDGBf
        SnZkDS1TTLXMDMKM3pS9AO2Qm7OiVIrMLAs2/Du0SBp5bsIwPZ4UAPTc4PKPXVxf
        jHWhnZIU5hmnnscjrN227OlOfZLzcR9IhBs9gVMNaCB1L7QOakx1xM9jAiIveOKT
        K5gP+1Dq1wY2JtBKZCr4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; t=1683512118; x=1683598518; bh=thsipzAUz9hoT
        A3uv+YAeIFR351QbQf8C08wcVjfO1o=; b=XGvWq+UqhUl7tJ36CAl3B6PZ+lq9q
        hMqGkN15HNjbFXRQ/71OqeyyWpQ970d7mHQaD0jmpNNIsiuOZ11ylh25Yf+efcb1
        xiZ+GN9PPf+JXagydTLqwOwqRkxKg5xLaJBUrMvbUWOzT2JhiG+Pph8IQXY2N1a1
        jzh0RnsFhP6J1T2ulZhLfDtmwujBkCducuTWuqdpHDBhqMai+GkWUemILX/jxqo5
        9+7pGLx1OriUGVjH698/nFWKSTRk9WqIY8SbCBGTYlvmq2LjUyyQqLjVAj+v73Q/
        MGOHUydI64bO4nBdawnv5azDw+RfvqIefsL/0NS1dl5oIMCTKRVMiYjEw==
X-ME-Sender: <xms:NltYZMqLkGjUiIFmVTTldopsQK9hdSPzkikgLjfiQd76UitE4tfsYg>
    <xme:NltYZCodUbXnTf1gAYnsD2gsuifj0U-xb2GiuAncj_HC6pC1xHNwkEOXGY2mhNogo
    GidHt87WoN6zNUSf2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeefjedgheekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
    thhhvgifucfotgeurhhiuggvfdcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
    eqnecuggftrfgrthhtvghrnhepvefhuedvueegjedutdfgteffkeefvefgkefhvdetheek
    tdehfeetgffggedvvdelnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghupd
    hgihhtlhgrsgdrtghomhdpmhhitghrohgtohhnthhrohhllhgvrhdrmhgunecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvh
    gvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:NltYZBN_1VkDRScmVljlW3KGnTKxljSeDMkzqKr-YYeGcXv-bi16fA>
    <xmx:NltYZD6ZefTOlgVFUDJUg5omiJkHrcAkWQ7GYZwV2TAvGx741Zw3Zg>
    <xmx:NltYZL6335zvMsoWgYqNli7pNvhRSh_755Lkk8JdbJ1nuEINTOWWLw>
    <xmx:NltYZO0xR3U0te7Wzu-0sxg4XtaIXj37it6kTL9GvWnVq_GB_4tkxA>
Feedback-ID: i426947f3:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 5883F234007B; Sun,  7 May 2023 22:15:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-386-g2404815117-fm-20230425.001-g24048151
Mime-Version: 1.0
Message-Id: <2f982412-f882-407a-96d6-b5b8d376dfd2@app.fastmail.com>
In-Reply-To: <20230505204720.GA3506915-robh@kernel.org>
References: <20230501064727.8921-1-matt@traverse.com.au>
 <20230501064727.8921-2-matt@traverse.com.au>
 <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
 <20230505204720.GA3506915-robh@kernel.org>
Date:   Mon, 08 May 2023 12:14:56 +1000
From:   "Mathew McBride" <matt@traverse.com.au>
To:     "Rob Herring" <robh@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc:     "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Shawn Guo" <shawnguo@kernel.org>, "Li Yang" <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: trivial-devices: add traverse,ten64-controller
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Sat, May 6, 2023, at 6:47 AM, Rob Herring wrote:
> On Tue, May 02, 2023 at 10:02:27AM +0200, Krzysztof Kozlowski wrote:
> > On 01/05/2023 08:47, Mathew McBride wrote:
> > > Add the Ten64 family board controller[1] to the trivial devices list.
> > > 
> > > Signed-off-by: Mathew McBride <matt@traverse.com.au>
> > > 
> > > [1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
> 
> Nothing at that link...

Apologies, we had a DNS issue last week, but it should be OK now.

If you still can't view it, there is the source to the page here:
https://gitlab.com/traversetech/ls1088firmware/ten64-user-manual/-/blob/master/docs/hardware/microcontroller.md

> 
> > > ---
> > >  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> > > index 246863a9bc7e..638e16fc9f71 100644
> > > --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> > > +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> > > @@ -397,6 +397,8 @@ properties:
> > >            - ti,tps544b25
> > >            - ti,tps544c20
> > >            - ti,tps544c25
> > > +            # Board controller for Ten64 family mainboards
> > > +          - traverse,ten64-controller
> > 
> > This is not a ten64 device, but just component of the SoC, right?
> > Regular NXP LPC804 Cortex-M0 which you just program with different firmware.
> > 
> > Basically this means you describe the firmware in Devicetree...
> > 
> > Rob,
> > 
> > What are the guidelines for generic co-processors (some Cortex-M)
> > exposing just I2C line and nothing more? Do we want to describe the
> > actual firmware running there?
> 
> It really depends if the firmware implements a fixed function or varies 
> frequently. If there's resources exposed in DT dependent on the 
> firmware, then the binding kind of has to be a binding for the firmware.
> 

The firmware implements a fixed set of functions. It's not a general purpose microcontroller intended for arbitrary uses.

The I/O on the microcontroller is wired to various state and control pins on the CPU and power regulators so it's hardware function is fixed in that regard.

> DT is the view of hardware as presented to the OS whether the h/w is 
> implemented in gates or firmware.
> 
> Rob
> 
> 
