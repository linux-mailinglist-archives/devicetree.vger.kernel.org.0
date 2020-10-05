Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8D21283325
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgJEJ1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725891AbgJEJ1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:27:48 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F76AC0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 02:27:48 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id D84E0292819
Subject: Re: [PATCH 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to
 json-schema
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>
Cc:     robh@kernel.org, kernel@collabora.com, bleung@chromium.org,
        groeck@chromium.org, sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-2-ricardo.canuelo@collabora.com>
 <19e0e78e-f490-8bcb-cfdb-338a577b2205@collabora.com>
 <20201005091804.2xjwer6ppoog5orm@rcn-XPS-13-9360>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <3d2b79f8-1a1f-ae70-0bd6-617724eec349@collabora.com>
Date:   Mon, 5 Oct 2020 11:27:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201005091804.2xjwer6ppoog5orm@rcn-XPS-13-9360>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ricardo,

On 5/10/20 11:18, Ricardo Cañuelo wrote:
> Hi Enric, thanks for reviewing the patch.
> 
> On lun 05-10-2020 10:52:26, Enric Balletbo i Serra wrote:
>>> +examples:
>>> +  - |
>>> +    cros-ec {
>>
>> We try to use always a complete example, and I think that, Rob also prefers
>> complete examples, so here you are missing the spi node.
> 
> Ok, I'll prepare a new patch with an extended example.
> 
>>> +        compatible = "google,cros-ec-spi";
>>
>> And, at least, should have a reg. Did not give you an error?
> 
> AFAIK, the reg property is only enforced if the node name includes the
> unit-address.
> 

Exactly, and because this is a spi driver it should have both, the node name
include the unit-address and the reg property. I.e:

    spi0 {
        #address-cells = <1>;
        #size-cells = <0>;

        cros-ec@0 {
            compatible = "google,cros-ec-spi";
            reg = <0x0>;
            spi-max-frequency = <5000000>;
        };
    };

Thanks,
 Enric

> Cheers,
> Ricardo
> 
