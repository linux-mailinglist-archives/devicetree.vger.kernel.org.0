Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C7EA68B02F
	for <lists+devicetree@lfdr.de>; Sun,  5 Feb 2023 15:09:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjBEOJP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Feb 2023 09:09:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjBEOJP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Feb 2023 09:09:15 -0500
X-Greylist: delayed 365 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 05 Feb 2023 06:09:13 PST
Received: from mailserver.pboenig.de (pboenig.de [90.187.254.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A86001F91D
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 06:09:13 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CE1BB2A6
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 15:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pboenig.de; s=dkim;
        t=1675605787; h=from:subject:date:message-id:to:mime-version:content-type:
         content-transfer-encoding:content-language;
        bh=H9TMjwce2P2uHUnansdWxX78u8TY7lxuIKPqazZ0LLk=;
        b=cPGPThT5HJAuMEu1PLzcQ8GscgS1MMDNnyps5tRyh3UOgs8+rMQmxNDfl4Zjx74gD0tiAq
        ElJcF+pEP6aGyYdbHiOmAyetMmb0Ccytym1s6BhgUNCRNp5cgSPRyoiPpuPh8Qhp6usgsu
        x675ZsRuyTar+FJApmB+W2tIGSsjJhzOwGgswxaI39gska7xanCwqb/n8SCJ3Kr1kZ5lKi
        vfGxHJWihHG8Eqkb8hvCeBNMTWF3WMPESh1H97sFYPGm27lW10SoX4zbXsls+4g4RMB2yK
        +Ra/uxiLXb+JaxChJEjF1CLn7cnmpaBZj/sGUa6aLt/oddgtPZl6SVj9h7LTbQ==
Message-ID: <d090e405-9193-5a40-7d72-8d8666fa8b30@pboenig.de>
Date:   Sun, 5 Feb 2023 15:03:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   =?UTF-8?Q?Patrice_B=c3=b6nig?= <mailinglist@pboenig.de>
Subject: question about port labeling
To:     devicetree@vger.kernel.org
Content-Language: de-DE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

through my work I have suddenly to deal with the device tree, it‘s my
first time. The platform I am dealing with is a Xilinx UltraScale+ with
Petalinux.

In the FPGA a video chain is set up. It contains different IP-Cores but
not all IP-Cores are from Xilinx we also use custom ones.

Yesterday I wanted to compile the Petalinux, but got an error that a
label (port connection, found in pl.dtsi) was not found in the device
tree. This is because it was the connection from a Xilinx IP-Core to a
custom one (video_cropper), which could not be recognized. I fixed the
error by adding in and out ports to the node of the custom IP-Core ->
snipped from system-user.dtsi

&sdi_rx_input_SDI_IN_2_video_cropper_0 {

     video_cropper_2_port0: ports {
         port@0 {
             compatible = "rme,mkfcrop";
             rme,width = <1920>;
             rme,height = <1080>;
             rme,hor-offset = <0>;
             rme,vert-offset = <0>;
             direction = "input";
             reg = <0>;
	sdi_rx_input_SDI_IN_2_video_cropper_0sdi_rx_input_SDI_IN_2_v_smpte_uhdsdi_rx_ss: endpoint {
                 remote-endpoint =
<&sdirx_outsdi_rx_input_SDI_IN_2_v_smpte_uhdsdi_rx_ss>;
             };
         };

         port@1 {
             compatible = "rme,mkfcrop";
             rme,width = <1920>;
             rme,height = <1080>;
             rme,hor-offset = <0>;
             rme,vert-offset = <0>;
             direction = "output";
             reg = <1>;
             video_cropper_2_out: endpoint {
                 remote-endpoint = <&sdi_rx_input_SDI_IN_2_v_proc_ss_0>;
             };
         };
     };
};




The compilation went without errors but WHY? The output port
"remote-endpoint = <&sdi_rx_input_SDI_IN_2_v_proc_ss_0>;" points to the
label of the node found in the pl.dtsi, but not to the input port of
this node (it has no input port label) -> snipped from pl.dtsi

                 sdi_rx_input_SDI_IN_2_v_proc_ss_0: v_proc_ss@a0240000 {
                         clock-names = "aclk_axis", "aclk_ctrl";
                         clocks = <&zynqmp_clk 72>, <&zynqmp_clk 71>;
                         compatible = "xlnx,v-proc-ss-2.3",
"xlnx,vpss-scaler-2.2", "xlnx,v-vpss-scaler-2.2", "xlnx,vpss-scaler";
                         reg = <0x0 0xa0240000 0x0 0x40000>;
                         reset-gpios = <&gpio_resets_axi_gpio_resets 5 0 1>;
                         xlnx,colorspace-support = <0>;
                         xlnx,csc-enable-window = "true";
                         xlnx,enable-csc = "false";
                         xlnx,h-scaler-phases = <64>;
                         xlnx,h-scaler-taps = <6>;
                         xlnx,max-height = <1125>;
                         xlnx,max-num-phases = <64>;
                         xlnx,max-width = <2200>;
                         xlnx,num-hori-taps = <6>;
                         xlnx,num-vert-taps = <6>;
                         xlnx,pix-per-clk = <2>;
                         xlnx,samples-per-clk = <2>;
                         xlnx,scaler-algorithm = <2>;
                         xlnx,topology = <0>;
                         xlnx,use-uram = <0>;
                         xlnx,v-scaler-phases = <64>;
                         xlnx,v-scaler-taps = <6>;
                         xlnx,video-width = <10>;
                         scaler_portssdi_rx_input_SDI_IN_2_v_proc_ss_0:
ports {
                                 #address-cells = <1>;
                                 #size-cells = <0>;

scaler_port1sdi_rx_input_SDI_IN_2_v_proc_ss_0: port@1 {
                                         /* For xlnx,video-format user
needs to fill as per their requirement */
                                         reg = <1>;
                                         xlnx,video-format = <3>;
                                         xlnx,video-width = <10>;

sca_outsdi_rx_input_SDI_IN_2_v_proc_ss_0: endpoint {
                                                 remote-endpoint =
<&sdi_rx_input_SDI_IN_2_v_frmbuf_wr_0sdi_rx_input_SDI_IN_2_v_proc_ss_0>;
                                         };
                                 };

scaler_port0sdi_rx_input_SDI_IN_2_v_proc_ss_0: port@0 {
                                         /* For xlnx,video-format user
needs to fill as per their requirement */
                                         reg = <0>;
                                         xlnx,video-format = <3>;
                                         xlnx,video-width = <10>;
                                 };
                         };
                 };



Sorry for the bad formatting of the snippets.

kind regards,
Patrice
