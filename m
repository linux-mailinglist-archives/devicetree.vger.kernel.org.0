Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0178515E98
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 17:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232399AbiD3PRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 11:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238467AbiD3PRy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 11:17:54 -0400
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD9EF60051
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 08:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1651331668;
        bh=KpkCQH0yeHnhMuWXXTtx5BznJDdINBL7kKfRNiiiYuM=;
        h=X-UI-Sender-Class:From:To:Subject:Date;
        b=ArRrjAcyT00I0OEiR2jXZjNP2a/ggBs/LvuQUdpgKGSmQaOnhV5rRqumdcHPDU3uw
         cTDG9L6hEugAvhEB++5hOkNTu+x7NKRG1w4k+M8+ph8FrFZSPSpWRKyQ1MVV2OIQW4
         wI9NX6vEjgrvQVqXMaUPNBMN8feSWLDnn9RvjWbQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.72.211] ([80.245.72.211]) by web-mail.gmx.net
 (3c-app-gmx-bs30.server.lan [172.19.170.82]) (via HTTP); Sat, 30 Apr 2022
 17:14:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-06d48002-e871-47e9-ad45-fb2f07dcdb39-1651331668327@3c-app-gmx-bs30>
From:   Frank Wunderlich <frank-w@public-files.de>
To:     devicetree@vger.kernel.org
Subject: help with converting txt binding to yaml
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 30 Apr 2022 17:14:28 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:vdOH17sFpzBvbkFcBCBJniZhtE4Jw2iPGozTQfX7gOk4Sg9DVr3rEsYZ4thaoenQvUvP3
 7ggpSBJCJ209mpnjU9WkySXSGR8enmxm6UvXGty+mQmOLWNXijMy3ij29w6ITTk/WWgII+nxNEPF
 HvW1FAl2xClM4YWwfXyVtoNwIajhSwcRCbtppTes0ae6gjEEDiLtcX4Qbg9yvdHj+ts+teET8py+
 2oPQ3nix53SXFLp6f3wLuhtvPC9tj1qdqtPgXUeL9clVAia+Yeo7u68+Rufs9nvrq7Nco1vsHdn7
 4I=
X-UI-Out-Filterresults: notjunk:1;V03:K0:96RQMqWx47o=:Un/pIT/UYNuVz0dyoYQyLT
 XmEYFYpKkPAfjpCx1vJt4aHqJUjqllcOUUPoRtT6rmLHkigbYSm1mo50gZ/3VPE4lNWnxC4y3
 pz/uECbo6QygPH93Z9tst3yubFSBLzuAReXIYYfqetX1iUi6KCgU9MHW/9fKmO5TIjpQ3+363
 eABG0i/j+JjmhvpXP88yrIXtiooBxusWsjwcmAmFe+77KE3bblyZGISQruie8hrOBjkFrvNgn
 kJ+CnUnhja5AHpcb77cOI8b3y9k5uWEOpbwPDwevOfdBXkQTLU7vKGy/4ZqwTsmu8ybw7uk5/
 71xvAllg17Xb3LbvqjdWclJrXvc/A+L0/uRC3zcjA2TZxHWDiZJh8oV4fT3ZImf63vJ5LvyYp
 +YHcKRFXs4Ub7iSOdMOVtWeax6tUhcPvt0468MjBMOslh1zpBza5ZX/+V2SLk4vVytf+brAjw
 NFcTN7k9PTcUTN2tqoWvY1xtlb/cTrlei6D/077oV7zoZouTf9Gn9JXXzwpyvYvF6uYtJ0V1I
 6J/tvkUIKiamlsVroPKsvQLD3badEn19rulI+twiH4wmTZbDNGIBWxcQttl3L6YsNDTl2aNvB
 P5FBnBE9tT8HKoAaiZpxWR5FO1NM/6Ix0RCG67TGPDfQaHcr5k+oZeK3q4PiF1DNKRgjKyvFH
 HyecXZQcUAeaCW5oo5el2n6l+B1FOm1bNcvu5mkEFeU1K6keSAwRASCtZm7oW3ylMxNtLF060
 bvUyBQ74vfdiVcNPAr3dBYy1mEgHMLjf4ONQSFcuiQmQQB93OK1WDTaKKlmP20Nkez1do0BK5
 o2a9ZvH
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

i try to convert the mt7530 txt binding to yaml and currently hang on duplicate labels across examples

have the 3 examples added like in the Documentation/devicetree/bindings/net/dsa/mt7530.txt

    Documentation/devicetree/bindings/net/dsa/mediatek.example.dts:203.26-213.15:
    ERROR (duplicate_label): /example-2/eth/mac@0: Duplicate label 'gmac0' on /example-2/eth/mac@0 and /example-1/eth/mac@0
    Documentation/devicetree/bindings/net/dsa/mediatek.example.dts:215.28-285.15:
    ERROR (duplicate_label): /example-2/eth/mdio-bus: Duplicate label 'mdio' on /example-2/eth/mdio-bus and /example-1/eth/mdio-bus
    Documentation/devicetree/bindings/net/dsa/mediatek.example.dts:224.35-284.19:
    ERROR (duplicate_label): /example-2/eth/mdio-bus/switch@1f: Duplicate label 'mt7530' on /example-2/eth/mdio-bus/switch@1f and /example-1/eth/mdio-bus/switch@1f
    Documentation/devicetree/bindings/net/dsa/mediatek.example.dts:271.43-282.27:
    ERROR (duplicate_label): /example-2/eth/mdio-bus/switch@1f/ports/port@6: Duplicate label 'cpu_port0' on /example-2/eth/mdio-bus/switch@1f/ports/port@6 and /example-1/eth/mdio-bus/switch@1f/ports/port@6


added descriptions about muxing/port 5 modes to "global" description, don't know if there is any better place.

and how to add requirements for the subnodes ("Required properties for the child nodes within ports container")

this is my current state:

https://github.com/frank-w/BPI-R2-4.14/blob/5.18-mt7531-mainline/Documentation/devicetree/bindings/net/dsa/mediatek.yaml

regards Frank
