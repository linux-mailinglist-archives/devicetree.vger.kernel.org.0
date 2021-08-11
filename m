Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 547473E88EC
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 05:39:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232910AbhHKDkL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 23:40:11 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:40224 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232795AbhHKDkL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 23:40:11 -0400
Received: from [192.168.12.102] (unknown [159.196.94.94])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 850DA20134;
        Wed, 11 Aug 2021 11:39:42 +0800 (AWST)
Message-ID: <47d77b0c67cade473c496a956754ad5fc3d074ca.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH 1/2] dt-bindings: net: New binding for mctp-i2c
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Date:   Wed, 11 Aug 2021 11:39:41 +0800
In-Reply-To: <CAL_Jsq+rDox9gBDpZ2ZhiBvbyeHtwJDqFv_3imgSzt8hk4K4dA@mail.gmail.com>
References: <20210802040458.334732-1-matt@codeconstruct.com.au>
         <20210802040458.334732-2-matt@codeconstruct.com.au>
         <CAL_Jsq+rDox9gBDpZ2ZhiBvbyeHtwJDqFv_3imgSzt8hk4K4dA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2021-08-02 at 10:45 -0600, Rob Herring wrote:
> On Sun, Aug 1, 2021 at 10:12 PM Matt Johnston <matt@codeconstruct.com.au>
> wrote:
> > 
> > +  slave functionality. The reg address must include
> > I2C_OWN_SLAVE_ADDRESS.
> 
> This constraint can be a schema.

The flag is already described in i2c.txt, is it OK to just make reference
to that?

Cheers,
Matt 

