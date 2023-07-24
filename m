Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC1A75EB6F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 08:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjGXGXt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 02:23:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbjGXGXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 02:23:48 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9CE3B8
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 23:23:46 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
        by mailout.west.internal (Postfix) with ESMTP id D35EB320069B;
        Mon, 24 Jul 2023 02:23:45 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute6.internal (MEProxy); Mon, 24 Jul 2023 02:23:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-type:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1690179825; x=
        1690266225; bh=gr8iKPtwnjpJ28Iyy+yQmLMzL6G3sg3vR9G+8vRcu+Y=; b=o
        KA11NVg5mxYDNEzfsB5GI6nmQpiBGtlhz4BoFJHdqrjmAoQ7JHx4Wu2ejHnWNUOE
        9TzdgpzkXcrBRMT/wDXpiSEUrytudzM+Yk5zzkgYTUBu5/WG/wyIP90sB9y+UxgU
        k9E0OU/vfsnQHvaBJw64bZMdj54S4XQj/cHqBBtXQx/Jaa+lIwLWN5ZiuaI/R0sz
        351MUa+YHBGhI+nMBTsnF5NGnfHifZZ6dbxnrqqle47lonRXnt92M4Letk3W5sy3
        l8RYl8zzrwQ7KN9lvKW3m7QAPsk7lqSlJgek8Ck9k/trZIWCS+A0xtaXD/V/Oiy+
        AeiRrnIXVabLL++thRuMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; t=1690179825; x=1690266225; bh=gr8iKPtwnjpJ2
        8Iyy+yQmLMzL6G3sg3vR9G+8vRcu+Y=; b=WCbY7g54WcEg8WN+vS2eBaXtM+skH
        a7ySG8lrSE+xetx4MmFvfGHmNZergOfiOFVAWOhabIZqYN7Uvk3gNgASQDvUij4U
        i+XGHNoiOwOQc941zYxqbbsCM9zduyqwICYnz0aMhZhFWrfrWbrTfEY4AQMZEvE0
        aLeb3jATnLEEQnZYrQtYao5/7ABEjnYwqTjhkJVn+/0C3xB1mivdTGP/EmWwUjqh
        h1ekMQTwki5qiBVojNqK6E0FbSDRWdDxyMikj62giYhvgTeHF2p4M4po9Zet79oY
        Zeg/wWKx7ZBAShfBLCvRvb0HrDa+tUhndEoHXDHZBpFUIYaXvdvpN4g3g==
X-ME-Sender: <xms:8Ri-ZH9SjPVlKga0l1tKz2XOyTnEYDQAXUjZBFHU6AF0uDwBF6jzPQ>
    <xme:8Ri-ZDtW5xWbsEslDMu8-HclosvW8bGyXu6w4PjS_1YsowIR_p6yGayby8umWiMAd
    LIpQRSnPA2J5Dltc7k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrheejgddutdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
    thhhvgifucfotgeurhhiuggvfdcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
    eqnecuggftrfgrthhtvghrnhepffevudegtdefffeihfdtteevudegveegvdfhuefhgefh
    feeihfeuveejgeegjedtnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghupd
    hgihhtlhgrsgdrtghomhdpmhhitghrohgtohhnthhrohhllhgvrhdrmhgupdhoiihlrggs
    shdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:8Ri-ZFARvcr0x8i8p2vy2VfMjsq81oyX-OK9Rx0ngQ_IjLEr7yda4Q>
    <xmx:8Ri-ZDersco3grkWWnWXlz4thLhGbiQJWP5ZJ-KZQAYUPAKcSYjTMw>
    <xmx:8Ri-ZMMUcbL-uyu0ccrKGj4agGSCXqQqp1b1Oc1VXRa7_Fjif9BQcw>
    <xmx:8Ri-ZJq_w436758DpUnV-BzFuleK5GE1tOyRHRSApXWLZn7ngrSk3A>
Feedback-ID: i426947f3:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 24A982340080; Mon, 24 Jul 2023 02:23:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-531-gfdfa13a06d-fm-20230703.001-gfdfa13a0
Mime-Version: 1.0
Message-Id: <b5cb1a9d-d6a4-430b-9b00-8f032d078f05@app.fastmail.com>
In-Reply-To: <2f982412-f882-407a-96d6-b5b8d376dfd2@app.fastmail.com>
References: <20230501064727.8921-1-matt@traverse.com.au>
 <20230501064727.8921-2-matt@traverse.com.au>
 <c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org>
 <20230505204720.GA3506915-robh@kernel.org>
 <2f982412-f882-407a-96d6-b5b8d376dfd2@app.fastmail.com>
Date:   Mon, 24 Jul 2023 16:23:22 +1000
From:   "Mathew McBride" <matt@traverse.com.au>
To:     "Rob Herring" <robh@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc:     "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Shawn Guo" <shawnguo@kernel.org>, "Li Yang" <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: trivial-devices: add traverse,ten64-controller
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(resend as my mail editor defaulted to HTML, oops)
Hello Rob,

On Mon, May 8, 2023, at 12:14 PM, Mathew McBride wrote:
> 
> 
> On Sat, May 6, 2023, at 6:47 AM, Rob Herring wrote:
> > On Tue, May 02, 2023 at 10:02:27AM +0200, Krzysztof Kozlowski wrote:
> > > On 01/05/2023 08:47, Mathew McBride wrote:
> > > > Add the Ten64 family board controller[1] to the trivial devices list.
> > > > 
> > > > Signed-off-by: Mathew McBride <matt@traverse.com.au>
> > > > 
> > > > [1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
> > 
> > Nothing at that link...
> 
> Apologies, we had a DNS issue last week, but it should be OK now.
> 
> If you still can't view it, there is the source to the page here:
> https://gitlab.com/traversetech/ls1088firmware/ten64-user-manual/-/blob/master/docs/hardware/microcontroller.md
> 
> > 
> > > > ---
> > > >  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> > > > index 246863a9bc7e..638e16fc9f71 100644
> > > > --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> > > > +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> > > > @@ -397,6 +397,8 @@ properties:
> > > >            - ti,tps544b25
> > > >            - ti,tps544c20
> > > >            - ti,tps544c25
> > > > +            # Board controller for Ten64 family mainboards
> > > > +          - traverse,ten64-controller
> > > 
> > > This is not a ten64 device, but just component of the SoC, right?
> > > Regular NXP LPC804 Cortex-M0 which you just program with different firmware.
> > > 
> > > Basically this means you describe the firmware in Devicetree...
> > > 
> > > Rob,
> > > 
> > > What are the guidelines for generic co-processors (some Cortex-M)
> > > exposing just I2C line and nothing more? Do we want to describe the
> > > actual firmware running there?
> > 
> > It really depends if the firmware implements a fixed function or varies 
> > frequently. If there's resources exposed in DT dependent on the 
> > firmware, then the binding kind of has to be a binding for the firmware.
> > 
> 
> The firmware implements a fixed set of functions. It's not a general purpose microcontroller intended for arbitrary uses.
> 
> The I/O on the microcontroller is wired to various state and control pins on the CPU and power regulators so it's hardware function is fixed in that regard.
> 
> > DT is the view of hardware as presented to the OS whether the h/w is 
> > implemented in gates or firmware.
> > 
> > Rob
> > 
> > 
Sorry for resurrecting an old submission, but I'm keen to get this particular change upstream.

This is where things left off: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230501064727.8921-2-matt@traverse.com.au/#3108891

In Documentation/devicetree/bindings/trivial-devices.yaml it says:
"This is a list of trivial I2C and SPI devices that have simple device tree
  bindings, consisting only of a compatible field, an address and possibly an
  interrupt line."

I read that and it sounded like trivial-devices.yaml matched my use case. There are no other properties to expose than "compatible" and "reg". It is simply (for U-Boot's use):
&i2c0 {
    uc: board-controller@7e {
        compatible = "traverse,ten64-controller";
        reg = <0x7e>;
   };
};

_Maybe_ something like nvmem could bind onto it in the future, but there is no such code in existence today.

If you think a dedicated YAML file is required, I can create "traverse,ten64-controller.yaml" and submit that (most likely under misc/).

Regards,
Matt
