Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A902353EB30
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235519AbiFFLkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 07:40:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235520AbiFFLkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 07:40:31 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA15A24973
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 04:40:29 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.155]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGxYh-1o2peh1ViN-00E5wg; Mon, 06 Jun 2022 13:40:20 +0200
Message-ID: <a28d1fe5-eac8-bb86-cbda-f3236c104d61@i2se.com>
Date:   Mon, 6 Jun 2022 13:40:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To:     Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
From:   Stefan Wahren <stefan.wahren@i2se.com>
Subject: display: bcm2835-dpi: warning about #address-cells', '#size-cells'
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:j5YmovIgynDFfPCusLFFY9na79g7QG9GFOqrjrjHWHAKnSpveZL
 HU2LloZBX29VhDeVosN+Cg8pJwFARyyCoXKqTResTQJE+tUgTRXvAjPSvl+lJ30c92k9AxL
 KpuU6ZQE29Zz+S0zlyW100lkvr1mIrFCiBROt6J4IptLNEq+uzJ/RTqDO6IgFkMRIoA5m+Y
 qJseQ1XBSIHPxtpQmiuUA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LNpmwT1jdms=:iy1VPFvI99UDPKT0ESbI4I
 TaEK4gtWNgrq55lGoEVavz62udUm3XIN20RMabLlUWqG1sADYNpihLPWjrdYs91RJZb50b3cG
 /82FEGwFMAJFEPfmnOq94f60YZykSjIBwUbH9DYwwdwtEHG7W+QtX+LgOfQo/uO9kikOpz1qL
 AvacwFD6gnAbHiH8vkkfspO3+3q7FWK7UWCg9MvrREqqtG3ZaV4FLSKylRVqI390nQfDkl03j
 AwwACHIRwKc48UPjoIF25EsOm0t8n+RhAfh/Z1j8AL/OuajHsBXugfEN6KUNr8T/E1cTv9WT1
 v7dy9AKn4Hs/hdCxCsDDpEzvjeEvr7fMMeQCV/ATKtiBHRocuFuEGpx5nlt4zkr7obEvcqA9J
 FydDl2MDl064BZIkisGXJNR5WBrMSGueFAUNOk3cI4xXN22fBpOLXa2kVjCp9wTR/MQUQY1Re
 0ZN9ogWut3nNUj59e5zT8goWWaB0z+SczgBCqE43NPDCObpx1V221muUJBlAlKM0b28kDuPd+
 qciUt6wutmiOyCs6wNP2LseHJIS4ysT12G9wpt4WDwcM7cvaSs0yyCt2EiekPf6O63wB7A0Xi
 EkwO/XYyG1RulXtL6OqAWJviSFGLMVpQMtuBsdEug7FlP2DlaD+5qFb8moe+4xtGx09Ab+jM+
 10B9RQJdvzCU3L0C8SM92e9JMmYaBUBj7pK6XYd2CQY6diBjHhrgU8e6sYLYRK0E4nhJgj3aK
 tFp+3dW0ZIb3eKLlSjUeeVM0RxcugfO4suINukVehMXfxv3tKjiTyLnfXfc=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

recently i noticed the following warning during "make dtbs_check"

arch/arm/boot/dts/bcm2835-rpi-b.dtb: dpi@7e208000: '#address-cells', 
'#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'

During conversion to DT schema 094536003e06 "dt-bindings: display: 
Convert VC4 bindings to schemas" the properties has been dropped from 
the example.

But i'm not sure how to fix this properly (drop them from the 
bcm283x.dtsi file or add the properties to brcm,bcm2835-dpi.yaml).

Best regards

